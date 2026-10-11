resource "datadog_domain_allowlist" "domain_allowlists" {
  for_each = var.domain_allowlists

  domains = each.value.domains
  enabled = each.value.enabled
}

