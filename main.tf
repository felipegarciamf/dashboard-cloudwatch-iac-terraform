

provider "aws" {


  region = "us-east-2" # substitua pela região desejada

  # Outras configurações opcionais, como perfil ou credenciais específicas:
  #profile = "default"
  #access_key                  = "AKIASWNGAKDJGBMSMM5I"
  #secret_access_key           = "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"
}

// LOCALSTACK
/*
provider "aws" {
  access_key                  = "AKIASWNGAKDJGBMSMM5I"
  secret_access_key           = "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"
  region                      = "us-east-1"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoint                    = "http://localhost:4566"  # Endpoint do LocalStack
}
*/

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


