resource "aws_s3_bucket" "weekend" {
  bucket = "${var.s3_bucket}"
  acl    = "private"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
/*s3 backend using this we can lock state file*/
terraform {
  backend "s3" {
    bucket = "krishnasess"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "weekend7pm"
  }
}
