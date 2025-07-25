output "app_name" {
  value = aws_codedeploy_app.app.name
}

output "group_name" {
  value = aws_codedeploy_deployment_group.group.deployment_group_name
}
