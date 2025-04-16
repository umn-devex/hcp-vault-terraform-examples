<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 4.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_approle_auth_backend_role.backend_role](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/approle_auth_backend_role) | resource |
| [vault_policy.approle_policy](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/policy) | resource |
| [vault_auth_backend.approle](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/data-sources/auth_backend) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Prefix with admin/ (ex: admin/secm, admin/secm/subteamA) | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault address | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
