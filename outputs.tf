output "config_ui_headers_name" {
  description = "Map of name values across all config_ui_headers, keyed the same as var.config_ui_headers except keys with no name are omitted"
  value       = { for k, v in vault_config_ui_header.config_ui_headers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_ui_headers_values" {
  description = "Map of values values across all config_ui_headers, keyed the same as var.config_ui_headers except keys with no values are omitted"
  value       = { for k, v in vault_config_ui_header.config_ui_headers : k => v.values if v.values != null && length(v.values) > 0 }
}

