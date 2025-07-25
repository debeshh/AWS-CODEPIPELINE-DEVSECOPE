terraform {
  backend "s3" {
    bucket = "tera-statebucket"
    key    = "statefiles/terraform.tfstate"
    region = "ap-south-1"
  }
}