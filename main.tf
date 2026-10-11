resource "google_vector_search_data_object" "vector_search_data_objects" {
  for_each = var.vector_search_data_objects

  collection_id   = each.value.collection_id
  data_object_id  = each.value.data_object_id
  location        = each.value.location
  data            = each.value.data
  deletion_policy = each.value.deletion_policy
  etag            = each.value.etag
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vectors" {
    for_each = each.value.vectors != null ? each.value.vectors : []
    content {
      dynamic "dense" {
        for_each = vectors.value.dense != null ? [vectors.value.dense] : []
        content {
          values = dense.value.values
        }
      }
      field_name = vectors.value.field_name
      dynamic "sparse" {
        for_each = vectors.value.sparse != null ? [vectors.value.sparse] : []
        content {
          indices = sparse.value.indices
          values  = sparse.value.values
        }
      }
    }
  }
}

