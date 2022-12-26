terraform {
  backend "s3" {
    region               = "us-east-1"
    bucket               = "ibm-terraform-state"
    key                  = "terraform.tfstate"
    workspace_key_prefix = "terraform"
  }
}


