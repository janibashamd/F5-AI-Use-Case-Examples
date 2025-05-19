output "configure_kubectl_user" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${local.region} update-kubeconfig --name ${module.eks.cluster_name} --alias ${local.name}"
}

output "configure_kubectl_local" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to create a kubeconfig file in your local directory"
  value       = "aws eks --region ${local.region} update-kubeconfig --name ${module.eks.cluster_name} --kubeconfig ./kubeconfig"
}

output "elastic_credentials" {
  description = "For Kibana/Elasticsearch credentials, see elasticsearch-master-credentials secret under elastic namespace, keys: username, password (base64 decode)"
  value       = "For Kibana/Elasticsearch credentials, see elasticsearch-master-credentials secret under elastic namespace, keys: username, password (base64 decode)"
}

output "minio_credentials" {
  description = "For MinIO credentials, see minio secret under elastic audit, keys: root-user, root-password (base64 decode)"
  value       = "For MinIO credentials, see minio secret under elastic audit, keys: root-user, root-password (base64 decode)"
}
