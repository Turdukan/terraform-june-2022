variable "ami" {
    type = string 
    description = " This is a variable for Amazon Machine Image "
    default = "ami-098e42ae54c764c35" 
}

variable "instance_type" {
    type = string
    description = "This is an Instance Type for EC2"
    default = "t2.micro"
}

variable "key_name" {
    type = string
    description = "This is an Key Pair for EC2"
    default = "turdukan"
}
variable "env" {
    type = string
    description = "This is a tag for EC2"
    default = "Development"
}

# data type: 
# 1. string 
# 2. number
# 3. boolean
