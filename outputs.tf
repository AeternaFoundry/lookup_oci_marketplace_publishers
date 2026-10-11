output "marketplace_publishers_lookup_id" {
  description = "Map of id values across all marketplace_publishers_lookup, keyed the same as var.marketplace_publishers_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_marketplace_publishers.marketplace_publishers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_publishers_lookup_compartment_id" {
  description = "Map of compartment_id values across all marketplace_publishers_lookup, keyed the same as var.marketplace_publishers_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_marketplace_publishers.marketplace_publishers_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "marketplace_publishers_lookup_filter" {
  description = "Map of filter values across all marketplace_publishers_lookup, keyed the same as var.marketplace_publishers_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_marketplace_publishers.marketplace_publishers_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "marketplace_publishers_lookup_publisher_id" {
  description = "Map of publisher_id values across all marketplace_publishers_lookup, keyed the same as var.marketplace_publishers_lookup except keys with no publisher_id are omitted"
  value       = { for k, v in data.oci_marketplace_publishers.marketplace_publishers_lookup : k => v.publisher_id if v.publisher_id != null && length(v.publisher_id) > 0 }
}
output "marketplace_publishers_lookup_publishers" {
  description = "Map of publishers values across all marketplace_publishers_lookup, keyed the same as var.marketplace_publishers_lookup except keys with no publishers are omitted"
  value       = { for k, v in data.oci_marketplace_publishers.marketplace_publishers_lookup : k => v.publishers if v.publishers != null && length(v.publishers) > 0 }
}

