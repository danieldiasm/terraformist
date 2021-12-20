remote_state {
    backend = "s3"

    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        bucket = "some-bucket-name" #CHANGE IT!
        key = "us-east-1/${path_relative_to_include()}/terraform.tfvars" # CONSIDER CHANGING!
        region = "us-east-1" # REVIEW
        encrypt = false
        dynamodb_table = "some-lock-table" #CHANGE IT!
        profile = "default"
    }
}   

terraform {
    extra_arguments "variables" {
        commands = get_terraform_commands_that_need_vars()
        optional_var_files = [
            find_in_parent_folders("environment.tfvars", "ignore")
        ]
    }
}

# SAMPLE CODE - Instead of having provider on each package, this can be
# used, haven't explored it very much yet, but I've added more on the intention
# of documenting the "generate" block of terragrunt.
# generate "provider" {
#     path = "provider.tf"
#     if_exists = "overwrite_terragrunt"
#     contents = <<EOF
#         provider "aws" {
#             profile = "default"
#             region = "us-east-1"
#         }
#     EOF
# }