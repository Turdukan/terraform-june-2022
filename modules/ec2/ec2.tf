resource "aws_instance" "main" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "${var.env} - instance"
        Environment = var.env
        s3_Bucket = var.s3_bucket_name
    }
}