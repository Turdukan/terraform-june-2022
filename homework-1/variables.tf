variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t3.micro"
}
variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "turdukan"
}
variable "env" {
  type        = string
  description = "This variable represents environment"
  default     = "dev"
}
variable "vpc" {
  type = string
  description = "this is variable represents homework vpc"
  default = "homework_vpc"
}
variable "ingress_ports" {
  type = list(string)
  description = "This is a list of ports for ingress rule"
  default = [ "22", "80", "443"]
}