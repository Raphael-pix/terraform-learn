provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "github.com/Raphael-pix/terraform-modules//webserver-cluster?ref=v0.0.1"

  cluster_name           = "webserver-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-0952"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 10
}
