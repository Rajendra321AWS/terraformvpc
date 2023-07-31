# Configure AWS provider
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key

}

# Create VPC
module "VPC" {
  source       = "../Modules/vpc"
  region       = var.region
  project_name = var.project_name
}