terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-0952"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
