terraform {
    required_version = "~> 1.2.4"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.21.0"
        }
    }
}
# ~> = lazy constraints, equal or higher version
# 1.2.4 = 1.2.4-1.2.x