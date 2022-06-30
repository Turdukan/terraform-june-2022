#Every single Terraform Confirgutration has a format called .tf

resource "aws_instance" "first_ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}

# Block: 2 types
# 1. resource block - create and manage resources
# 2. data source block - 
# Each block expects label. Resource block expects 2 labels
# "aws_instance" - first label - resource type - predefined by Terraform 
# "first_ec2" - second label - logical name or ID (unique name) - defined by Author
# Key has to  be unique, values can be repeated
#  ami (argument name)          = "ami-0be2609ba883822ec" (argument value)
# Argument - confirgurations or properties of your resource

#Nice to have:
# 1. Use _ instead of -
# 2. use lower cases
