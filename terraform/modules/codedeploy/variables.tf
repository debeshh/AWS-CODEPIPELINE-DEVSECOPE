variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "codepipeline_role_arn" {
  description = "IAM Role ARN for CodePipeline and CodeDeploy"
  type        = string
}

variable "instance_tag_key" {
  description = "EC2 tag key for deployment group"
  type        = string
}

variable "instance_tag_value" {
  description = "EC2 tag value for deployment group"
  type        = string
}
variable "codedeploy_role_arn" {
  description = "ARN of the CodeDeploy service role"
  type        = string
}
