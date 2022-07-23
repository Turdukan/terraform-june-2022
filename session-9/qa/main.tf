module "ec2" {
  source        = "../../modules/ec2" # local module needs an absolute path to our child module
  ami           = "ami-098e42ae54c764c35"
  instance_type = "t2.micro"
  env           = "qa"
}