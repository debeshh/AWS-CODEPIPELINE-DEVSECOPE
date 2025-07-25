variable "project_name" {}
variable "vpc_id" {}
variable "subnet_id" {
  description = "The subnet to launch the EC2 instance in"
  type        = string
}
variable "aws_region" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "iam_instance_profile" {}
variable "instance_tag_key" {}
variable "instance_tag_value" {}
variable "security_group_id" {
  description = "ID of the security group to associate with the EC2 instance"
  type        = string
}



