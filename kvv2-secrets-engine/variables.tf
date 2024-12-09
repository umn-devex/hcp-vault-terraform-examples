variable "vault_address" {
  type        = string
  description = "Vault address"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex: admin/secm, admin/secm/subteamA)"
  default     = "admin/secm"
}
