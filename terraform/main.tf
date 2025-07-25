module "network" {
  source        = "./modules/network"
  aws_region    = var.aws_region
  project_name  = var.project_name
}

module "s3" {
  source       = "./modules/s3"
  bucket_name  = var.bucket_name
}

module "iam" {
  source        = "./modules/iam"
  project_name  = var.project_name
  bucket_name   = var.bucket_name
}

module "ec2" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  project_name        = var.project_name
  aws_region          = var.aws_region
  instance_tag_key    = var.instance_tag_key
  instance_tag_value  = var.instance_tag_value
  subnet_id           = module.network.public_subnet_id
  vpc_id                = module.network.vpc_id
  security_group_id   = module.network.security_group_id
  iam_instance_profile = module.iam.ec2_profile_name
}

module "codebuild" {
  source        = "./modules/codebuild"
  project_name  = var.project_name
  codebuild_role_arn = module.iam.codebuild_role_arn
}

module "codedeploy" {
  source              = "./modules/codedeploy"
  project_name        = var.project_name
  instance_tag_key    = var.instance_tag_key
  instance_tag_value  = var.instance_tag_value
  codepipeline_role_arn = module.iam.codepipeline_role_arn
  codedeploy_role_arn = module.iam.codedeploy_role_arn
}

module "codepipeline" {
  source                  = "./modules/codepipeline"
  project_name            = var.project_name
  bucket_name             = var.bucket_name
  github_owner            = var.github_owner
  github_repo             = var.github_repo
  github_branch           = var.github_branch
  github_token            = var.github_token
  codepipeline_role_arn   = module.iam.codepipeline_role_arn
  build_project_name      = module.codebuild.project_name
  codedeploy_app_name     = module.codedeploy.app_name
  codedeploy_group_name   = module.codedeploy.group_name
}

output "instance_public_ip" {
  value = module.ec2.public_ip
}

output "codepipeline_name" {
  value = module.codepipeline.codepipeline_name
}
