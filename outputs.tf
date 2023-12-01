################################################################################
# Replication Group
################################################################################

output "replication_group_id" {
  description = "The ID of the ElastiCache Replication Group"
  value       = module.replication_group.id
}

output "replication_group_configuration_endpoint_address" {
  description = "The address of the replication group configuration endpoint when cluster mode is enabled"
  value       = module.replication_group.configuration_endpoint_address
}

output "replication_group_primary_endpoint_address" {
  description = "The address of the endpoint for the primary node in the replication group, if the cluster mode is disabled"
  value       = module.replication_group.primary_endpoint_address
}

output "replication_group_member_clusters" {
  description = "The identifiers of all the nodes that are part of this replication group. "
  value       = module.replication_group.member_clusters
}

################################################################################
# Cluster
################################################################################

output "cluster_cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone"
  value       = module.cluster.cache_nodes
}

output "cluster_configuration_endpoint" {
  description = "The configuration endpoint to allow host discovery"
  value       = module.cluster.configuration_endpoint
}

output "cluster_address" {
  description = "The DNS name of the cache cluster without the port appended"
  value       = module.cluster.cluster_address
}

################################################################################
# Subnet Group
################################################################################

output "subnet_group_name" {
  description = "The ElastiCache subnet group name"
  value       = module.subnet_group.name
}

output "subnet_group_ids" {
  description = "The ElastiCache subnet group IDs"
  value       = module.subnet_group.ids
}

################################################################################
# Parameter Group
################################################################################

output "parameter_group_name" {
  description = "The ElastiCache parameter group name"
  value       = module.parameter_group.name
}

output "parameter_group_id" {
  description = "The ElastiCache parameter group id"
  value       = module.parameter_group.id
}
