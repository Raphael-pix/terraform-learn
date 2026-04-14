output "primary_address" {
  description = "Connect to the primary database at this endpoint"
  value       = module.mysql_primary.address
}
output "primary_port" {
  description = "The port the primary database is listening on"
  value       = module.mysql_primary.port
}
output "primary_arn" {
  description = "The ARN of the primary database"
  value       = module.mysql_primary.arn
}

output "replica_address" {
  description = "Connect to the replica database at this endpoint"
  value       = module.mysql_replica.address
}
output "replica_port" {
  description = "The port the replica database is listening on"
  value       = module.mysql_replica.port
}
output "replica_arn" {
  description = "The ARN of the replica database"
  value       = module.mysql_replica.arn
}
