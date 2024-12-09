variable "vault_address" {
  type        = string
  description = "Vault address"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex: admin/secm, admin/secm/subteamA)"
  # default     = "admin/CESI"
}

variable "github_org" {
  type        = string
  description = "Name of Github Org (ex: umn-secm)"
}

variable "repository" {
  type        = list(string)
  description = "List of repositories to create vault roles/policies for (ex: [\"hcp-vault-terraform-examples\", \"repo_2\"])"
}
