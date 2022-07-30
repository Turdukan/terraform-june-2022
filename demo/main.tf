module "ec2" {
  source         = ""
  ami            = ""
  instance_type  = "t2.micro"
  env            = "dev"
}