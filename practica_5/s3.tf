resource "aws_s3_bucket" "cthulhu-bucket" {
    bucket = "bucket-${local.sufix}-${local.s3_sufix}"
    
    tags = {
        Name        = "Cthulhu Bucket-${local.sufix}"
        Environment = "Dev"
    }           
  
}