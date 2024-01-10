## Connect by credentials file
# if use credentials authen
# note: Do not set the path to the credentials file, in order to use the default AWS credentials.
# shared_credentials_file = "~/.aws/credentials"
       provider "aws" {
            region                  = var.region
            profile                 = "jakkapun-kanyasing"
       }

## Connect by hardcode
      # provider "aws" {
          #  region                  = var.region
          #  access_key              = "your_aws_access_key"
          #  secret_key              = "your_aws_secret_access_key"
      # }


## Connect by Terminal Environment Variables
# You can create these environment variables in your current terminal session by executing the following commands:
# export AWS_ACCESS_KEY_ID=your_aws_access_key
# export AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
      # provider "aws" {
          #  region                  = var.region
      # }