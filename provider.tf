provider "aws" {
    shared_credentials_file= "~/.aws/credentials"
    profile = var.profile
    region = var.region
}
