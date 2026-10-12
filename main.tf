resource "vault_config_ui_header" "config_ui_headers" {
  for_each = var.config_ui_headers

  name   = each.value.name
  values = each.value.values
}

