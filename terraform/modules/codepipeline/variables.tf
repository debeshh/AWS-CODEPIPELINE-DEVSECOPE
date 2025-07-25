variable "project_name" {}
variable "bucket_name" {}
variable "github_owner" {}
variable "github_repo" {}
variable "github_branch" {}
variable "github_token" {
  sensitive = true
}
variable "codepipeline_role_arn" {}
variable "build_project_name" {}
variable "codedeploy_app_name" {}
variable "codedeploy_group_name" {}
