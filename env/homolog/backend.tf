terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "homolog/terraform.tfstate"
    region = "us-east-1"
  }
}
