terraform {
    required_version = "1.15.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.53.0"
#changed nothing
     }
    }
   }

provider "aws" {
        region = "eu-north-1" 
        #profile = "default"
        #changed ntg
	}

resource "aws_instance" "kousarinfra" {
	ami = "ami-0a0823e4ea064404d" 
	instance_type = "t3.micro"
}
