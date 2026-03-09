terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-0952"
    key    = "prod/data-stores/mysql/terraform.tfstate"
    region = "us-east-1"

    use_lockfile = true
  }
}
