provider "aws" {
  region = "us-east-1"

  # Tags to apply to all AWS resources by default
  default_tags {
    tags = {
      Owner     = "Kaira"
      ManagedBy = "Terraform"
    }
  }
}

resource "aws_iam_user" "exmaple_count" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

resource "aws_iam_user" "example_for_each" {
  for_each = toset(var.user_names)
  name     = each.value
}
