#resource "aws_ebs_snapshot" "snap-public_instance" {
#  volume_id = aws_ebs_volume.example.id
#
#  tags = {
#    Name = "HelloWorld_snap"
#  }
#}