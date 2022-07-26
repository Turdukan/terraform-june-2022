variable "ami" {
    type = string
    description = " This is AMI for my EC2 instance"
}
variable "instance_type" {
    type = string
    description = "the size of EC2"
}
variable "env" {
    type = string
    description = "This is an environment"
}

variable "s3_bucket_name" {
    type = string
    description = "this is the name of s3 bucket"
}