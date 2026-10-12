variable "config_ui_headers" {
  description = <<EOT
Map of config_ui_headers, attributes below
Required:
    - name
    - values
EOT

  type = map(object({
    name   = string
    values = set(string)
  }))
}

