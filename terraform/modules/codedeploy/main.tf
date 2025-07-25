resource "aws_codedeploy_app" "app" {
  name             = "${var.project_name}-codedeploy-app"
  compute_platform = "Server"
}

resource "aws_codedeploy_deployment_group" "group" {
  app_name              = aws_codedeploy_app.app.name
  deployment_group_name = "${var.project_name}-deploy-group"
  service_role_arn      = var.codedeploy_role_arn

  ec2_tag_set {
    ec2_tag_filter {
      key   = var.instance_tag_key
      value = var.instance_tag_value
      type  = "KEY_AND_VALUE"
    }
  }

  deployment_style {
    deployment_type   = "IN_PLACE"
    deployment_option = "WITHOUT_TRAFFIC_CONTROL"
  }
}
