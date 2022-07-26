module "s3" {
  source  = "github.com/aKumoSolutions/terraform-june-2022/modules/s3"
  env     = "dev"
  my_name = "turdukan"
}
module "ec2" {
  source         = "github.com/Turdukan/terraform-june-2022/modules/ec2"
  ami            = "ami-098e42ae54c764c35"
  instance_type  = "t2.micro"
  env            = "dev"
  s3_bucket_name = module.s3.bucket_name
}