variable "instance_type" {
  type        = string
  description = "This is instance type for ec2"
  default     = "t2.micro"
}
variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "turdukan"
}
variable "env" {
  type        = string
  description = "this represents environment"
  default     = "dev"
}
variable "subnet_id" {
  type    = string
  default = "subnet-0942f893198db9cd8"
}
variable "security_group_id" {
  type        = string
  description = "This is id for default security group"
  default     = "sg-09fcde146d2f0e96c"
}