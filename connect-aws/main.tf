## Connect by credentials file

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

      # provider "aws" {
          #  region                  = var.region
      # }