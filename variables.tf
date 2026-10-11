variable "vector_search_data_objects" {
  description = <<EOT
Map of vector_search_data_objects, attributes below
Required:
    - collection_id
    - data_object_id
    - location
Optional:
    - data
    - deletion_policy
    - etag
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vectors (block):
        - dense (optional, block):
            - values (required)
        - field_name (required)
        - sparse (optional, block):
            - indices (required)
            - values (required)
EOT

  type = map(object({
    collection_id   = string
    data_object_id  = string
    location        = string
    data            = optional(string)
    deletion_policy = optional(string)
    etag            = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vectors = optional(list(object({
      dense = optional(object({
        values = list(number)
      }))
      field_name = string
      sparse = optional(object({
        indices = list(number)
        values  = list(number)
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vector_search_data_objects : (
        v.data == null || (can(jsondecode(v.data)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

