output "region_1" {
  description = "The name of the first region"
  value       = data.aws_region.region_1.name
}
output "region_2" {
  description = "The name of the second region"
  value       = data.aws_region.region_2.name
}

output "instance_region_1_az" {
  description = "The AZ where the instance in the first region deployed"
  value       = aws_instance.region_1.availability_zone
}
output "instance_region_2_az" {
  description = "The AZ where the instance in the second region deployed"
  value       = aws_instance.region_2.availability_zone
}
