#resource "aws_ebs_snapshot" "snap-public_instance" {
#  volume_id = vol-02a581381eb2fbeb2

#  tags = {
#    Name = "HelloWorld_snap"
#  }
#}

resource "aws_ebs_snapshot" "snap_public_instance" {
  for_each = { for idx, instance in aws_instance.public_instance : idx => instance }

  volume_id = each.value.root_block_device[0].volume_id

  tags = {
    Name = each.value.tags["Name"]
  }
}