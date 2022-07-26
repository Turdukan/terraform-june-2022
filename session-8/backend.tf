terraform {
  backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket-turdukan"
    key            = "session-8/terraform.tfstate" # Prefix (folder)
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}



# Terraform state lock prevents from the accidental apply or destroy commands or state changes
# It will make sure one apply or destroy at the times. 
# Terraform state lock uses DynomaDB table to lock every single executions
