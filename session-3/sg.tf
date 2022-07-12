resource "aws_security_group" "main"  {   # terraform resource name
  name        = "Security group" #aws resource name 
  description = "This is a sg for my EC2"
}

# Argument = Terraform defines, unique
# Value = author defines
