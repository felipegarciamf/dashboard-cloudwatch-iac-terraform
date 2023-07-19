resource "aws_cloudwatch_dashboard" "my_dashboard_geral" {

  dashboard_name = "my-dashboard-geral"

  dashboard_body = jsonencode(jsondecode("${local.widget_geral_content}"))
}







