provider "aws" {
  region                  = var.region
  profile                 = "jakkapun-kanyasing"
  # if use credentials authen
  # note: Do not set the path to the credentials file, in order to use the default AWS credentials.
  # shared_credentials_file = "~/.aws/credentials"

}

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}