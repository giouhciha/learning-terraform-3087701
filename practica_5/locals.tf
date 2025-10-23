locals {
  sufix = "${var.tags.project}-${var.tags.env}"
}

resource "random_string" "sufijo-s3" {
  length  = 6
  upper   = false
  special = false
  
}

locals {
  s3_sufix = random_string.sufijo-s3.id
}