variable "domain_allowlists" {
  description = <<EOT
Map of domain_allowlists, attributes below
Required:
    - domains
    - enabled
EOT

  type = map(object({
    domains = list(string)
    enabled = bool
  }))
}

