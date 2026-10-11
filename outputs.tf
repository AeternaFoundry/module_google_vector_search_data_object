output "vector_search_data_objects_id" {
  description = "Map of id values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no id are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vector_search_data_objects_collection_id" {
  description = "Map of collection_id values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no collection_id are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "vector_search_data_objects_create_time" {
  description = "Map of create_time values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no create_time are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vector_search_data_objects_data" {
  description = "Map of data values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no data are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.data if v.data != null && length(v.data) > 0 }
}
output "vector_search_data_objects_data_object_id" {
  description = "Map of data_object_id values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no data_object_id are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.data_object_id if v.data_object_id != null && length(v.data_object_id) > 0 }
}
output "vector_search_data_objects_deletion_policy" {
  description = "Map of deletion_policy values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vector_search_data_objects_etag" {
  description = "Map of etag values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no etag are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "vector_search_data_objects_location" {
  description = "Map of location values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no location are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vector_search_data_objects_name" {
  description = "Map of name values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no name are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vector_search_data_objects_project" {
  description = "Map of project values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no project are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vector_search_data_objects_update_time" {
  description = "Map of update_time values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no update_time are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "vector_search_data_objects_vectors" {
  description = "Map of vectors values across all vector_search_data_objects, keyed the same as var.vector_search_data_objects except keys with no vectors are omitted"
  value       = { for k, v in google_vector_search_data_object.vector_search_data_objects : k => v.vectors if v.vectors != null && length(v.vectors) > 0 }
}

