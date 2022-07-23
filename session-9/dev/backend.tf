terraform {
  backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket-turdukan"
    key            = "session-9/terraform.tfstate" # Prefix (folder)
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}