output "service_name" {
  description = "Service Name"
  value       = var.service_name
}

output "dbId" {
  description = "Db Id"
  value       = ovh_cloud_project_database.mongodb.id
}

output "dbUserPassword" {
  description = "Db User Password"
  value       = ovh_cloud_project_database_mongodb_user.mongouser.password
  sensitive   = true
}
