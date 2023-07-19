provider "aws" {
  region = "us-east-2" # substitua pela região desejada
}


# Ler o conteúdo dos arquivos JSON individuais
locals {
  widget_geral_content = templatefile("templates/template_geral.json", {
    instance_id = var.instance_id
    aws_region  = var.aws_region
    bucket_name = var.bucket_name
  })

  widget_gateway_content = templatefile("templates/template_gateway.json", {
    api_name   = var.api_name
    aws_region = var.aws_region
    bucket_name = var.bucket_name
  })

}


