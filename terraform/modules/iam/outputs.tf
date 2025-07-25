output "codebuild_role_arn" {
  value = aws_iam_role.codebuild_role.arn
}

output "codepipeline_role_arn" {
  value = aws_iam_role.codepipeline_role.arn
}

output "ec2_role_arn" {
  value = aws_iam_role.ec2_role.arn
}

output "ec2_instance_profile" {
  value = aws_iam_instance_profile.ec2_profile.name
}
output "ec2_profile_name" {
  description = "The name of the EC2 instance profile"
  value       = aws_iam_instance_profile.ec2_profile.name
}

output "codedeploy_role_arn" {
  value = aws_iam_role.codedeploy_role.arn
}
