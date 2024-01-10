provider "aws" {
  region                  = var.region
  profile                 = "jakkapun-kanyasing"
  # if use credentials authen
  # note: Do not set the path to the credentials file, in order to use the default AWS credentials.
  # shared_credentials_file = "~/.aws/credentials"
}
locals {
  create                    =   var.create 
  is_t_instance_type        =   replace(var.instance_type, "/^t(2|3|3a|4g){1}\\..*$/", "1") == "1" ? true : false
  ami                       =   try(coalesce(var.ami, try(nonsensitive(data.aws_ssm_parameter.this[0].value), null)), null)
}
data "aws_ssm_parameter" "this" {
  count = local.create && var.ami == null ? 1 : 0

  name = var.ami_ssm_parameter
}

resource "aws_instance" "this" {
  count = local.create && !var.ignore_ami_changes && !var.create_spot_instance ? 1 : 0
  
  ami   = local.ami
  instance_type = var.instance_type    
    
    tags = {
    Name = "HelloWorld"
  }
}