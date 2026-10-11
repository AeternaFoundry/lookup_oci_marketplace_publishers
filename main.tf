data "oci_marketplace_publishers" "marketplace_publishers_lookup" {
  for_each = var.marketplace_publishers_lookup

  compartment_id = each.value.compartment_id
  publisher_id   = each.value.publisher_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

