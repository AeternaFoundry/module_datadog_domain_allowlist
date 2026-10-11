output "domain_allowlists_id" {
  description = "Map of id values across all domain_allowlists, keyed the same as var.domain_allowlists except keys with no id are omitted"
  value       = { for k, v in datadog_domain_allowlist.domain_allowlists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "domain_allowlists_domains" {
  description = "Map of domains values across all domain_allowlists, keyed the same as var.domain_allowlists except keys with no domains are omitted"
  value       = { for k, v in datadog_domain_allowlist.domain_allowlists : k => v.domains if v.domains != null && length(v.domains) > 0 }
}
output "domain_allowlists_enabled" {
  description = "Map of enabled values across all domain_allowlists, keyed the same as var.domain_allowlists except keys with no enabled are omitted"
  value       = { for k, v in datadog_domain_allowlist.domain_allowlists : k => v.enabled if v.enabled != null }
}

