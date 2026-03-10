output "first_arn" {
  value       = aws_iam_user.exmaple_count[0].arn
  description = "The ARN for the first user"
}

output "all_arns" {
  value       = aws_iam_user.exmaple_count[*].arn
  description = "The ARNs for all users"
}

output "all_users" {
  value = aws_iam_user.example_for_each
}

output "upper_names" {
  value = [for name in var.user_names : upper(name)]
}

output "short_upper_names" {
  value = [for name in var.user_names : upper(name) if length(name) < 5]
}

output "bios" {
  value = [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}

output "upper_roles" {
  value = { for name, role in var.hero_thousand_faces : upper(name) =>
  upper(role) }
}

output "for_directive" {
  value = "%{for name in var.user_names} ${name}, %{endfor}"
}

output "for_directive_index" {
  value = "%{for i, name in var.user_names}(${i}) ${name}, %{endfor}"
}
