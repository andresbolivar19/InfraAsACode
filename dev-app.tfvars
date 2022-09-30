# terraform apply -var-file="dev-app.tfvars"

# Common
project = "InfraAsACode"

# General 
aws_region = "us-east-2"
createdBy  = "InfraAsACode"


project_name             = "InfraAsACode-cicdpipeline"
project_desc             = "InfraAsACode codebuild project"
environment_compute_type = "BUILD_GENERAL1_SMALL"
environment_image        = "hashicorp/terraform:1.2.2"
environment_type         = "LINUX_CONTAINER"
dockerhub_credentials    = ""
credential_provider      = "SECRETS_MANAGER"
environment_variables = [
  {
    name  = "KEY"
    value = "VALUE"
    type  = "PLAINTEXT"
  }
]
report_build_status          = false
source_version               = "master"
buildspec_file_absolute_path = "./buildspec/apply-buildspec.yml"
vpc_id                       = "vpc-####"
subnets                      = ["subnet-####"]
security_group_ids           = ["sg-####"]
#source_location              = "https://github.com/andresbolivar19/InfraAsACode.git"
source_location              = "./modules/ec2"


s3_bucket_id       = "infraasacode-tf-codepipeline"
full_repository_id = "andresbolivar19/InfraAsACode"
#codestar_connector_credentials="arn:aws:codestar-connections:us-east-2:######:connection/######"
codestar_connector_credentials="arn:aws:codestar-connections:us-east-2:300751704770:connection/c59fa8db-f674-402c-b47a-d642bd7def6b"
