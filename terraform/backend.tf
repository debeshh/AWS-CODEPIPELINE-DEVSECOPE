terraform {
  backend "s3" {
    bucket = "debesh-terabucket"
    key    = "statefiles/terraform.tfstate"
    region = "ap-south-1"
  }
}