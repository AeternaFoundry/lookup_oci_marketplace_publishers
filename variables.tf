variable "marketplace_publishers_lookup" {
  description = <<EOT
Map of marketplace_publishers_lookup, attributes below
Optional:
    - compartment_id
    - publisher_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    publisher_id   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

