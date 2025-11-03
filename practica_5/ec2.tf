variable "instancias" {
    description = "Nombres de las instacias"
    type       = list(string)
    default    = ["apache"]
}

resource "null_resource" "script_trigger" {
  triggers = {
    script_hash = filesha256("userdata.sh")
  }
  
}


resource "aws_instance" "public_instance" {
  count = length(var.instancias)
  ami           = var.amis["ohio"]
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet_publica.id
  key_name = data.aws_key_pair.deployer_key.key_name
  vpc_security_group_ids = [ aws_security_group.sg_public_instance.id ]
  user_data = file("userdata.sh")

  lifecycle {
   replace_triggered_by = [ null_resource.script_trigger ]
  }

  tags = {
    Name = "${var.instancias[count.index]}-${local.sufix}"
  }

}

output "ec2_public_instance_volume_ids" {
  description = "IDs de los volúmenes EBS"
  value       = [for instance in aws_instance.public_instance : instance.volume_id]
}
  #rovisioner "local-exec" {
  # command = "echo ${self.public_ip} > public_ip.txt"
  #

  #rovisioner "remote-exec" {
  # inline = [
  #   "echo 'Hello, World!' > ~/hello.txt"
  # ]

  # connection {
  #   type        = "ssh"
  #   user        = "ec2-user"
  #   private_key = var.ssh-key
  #   host        = self.public_ip
  # }
  #
#}

resource "aws_instance" "monitoring_instance" {
  count = var.enable_monitoring ? 1 : 0
  ami           = var.amis["ohio"]
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet_publica.id
  key_name = data.aws_key_pair.deployer_key.key_name

  vpc_security_group_ids = [ aws_security_group.sg_public_instance.id ]

  tags = {
    Name = "monitoring Instance-${local.sufix}"
  }
  
}



#resource "aws_instance" "private_instance" {
#  ami           = var.amis["ohio"]
#  instance_type = "t3.micro"
#  subnet_id = aws_subnet.subnet_private.id
#  key_name = data.aws_key_pair.deployer_key.key_name

  #iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name

#  depends_on = [ aws_subnet.subnet_private ]

#  tags = {
#    Name = "backend Instance"
#  }
#}