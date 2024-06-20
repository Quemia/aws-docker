terraform {
  backend "s3" {
    bucket = "terraform-state-my"
    key    = "Prod/terraform.tfstate"
    region = "us-east-1"
  }
}
