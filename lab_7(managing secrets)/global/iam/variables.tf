variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

variable "allowed_repo_branches" {
  description = "Github repos/branches allowed to assume the IAM role"
  type = list(object({
    org    = string
    repo   = string
    branch = string
  }))
}
