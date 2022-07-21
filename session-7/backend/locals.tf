# locals {
#     common_tags = {
#         environment = var.environment
#         project = var.project
#         owner = var.owner
#         team = var.team
#         managed_by = var.managed_by
#         organization = var.organization
#     }
# }

# Under every single resource:
# tags = local.common_tags


# Naming and tagging standards
# if the resource does not have a tag, it will be deleted
# Naming standard:
# 1. what cloud provider - aws
# 2. what is the account - non-prod, prod
# 3. what is the environment - dev, qa, stage, prod
# 4. what is the region - us-west-2, us-west-1
# 5. what is teh project - wordpress, matrix, apple

# How does it look? 
# aws-nonprod-us-west-2-dev-matrix-${resource}

# Tagging standard or Common Tags:
# 1. environment - dev
# 2. project - matrix
# 3. owner - Kris
# 4. team - cloud
# 5. managed_by - terraform
