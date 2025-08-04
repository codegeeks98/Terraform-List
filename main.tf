terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {
    region = "us-east-1"
}

# plan-execute ==========================================================


# Creating the List type variable

variable "names" {
    
    default = ["Partha","Apurva","Amit"]

}


#To create 3 IAM users with the names given in a List

resource "aws_iam_user" "my_iam_users" {
    
    count = length(var.names)
    name = var.names[count.index]


}