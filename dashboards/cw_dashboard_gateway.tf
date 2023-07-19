resource "aws_cloudwatch_dashboard" "my_dashboard_gateway" {
  dashboard_name = "my-dashboard-gateway"

  dashboard_body = jsonencode(jsondecode("${local.widget_gateway_content}"))
}







