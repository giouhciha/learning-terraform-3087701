resource "aws_s3_bucket" "cthulhu-bucket" {
    bucket = "cthulhu-bucket-${local.sufix}"
    
    tags = {
        Name        = "Cthulhu Bucket-${local.sufix}"
        Environment = "Dev"
    }           
  
}