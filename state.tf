terraform {
  backend "s3" {
    bucket = "easydevops"
    key = "my-tf-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_ssm_parameter" "" {
  name  = "foo"
  type  = "String"
  value = "bar"
}

variable "parameters" {
    default = [
        
    ]
}