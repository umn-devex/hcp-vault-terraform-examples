# HCP Vault Terraform Examples

This terraform creates the following vault resources:

- JWT auth backend for github
- One role and policy that gives access for all the github_org's repositories to read all secrets under secret/github_actions/global/*
- Individual roles and policies for each repository that can read all secrets under secret/github_actions/${repository}/* 

## Terraform tfvars

If you would like to re-use the same variables without inputting them at every terraform plan/apply, create the following terraform.tfvars file at the root of the github_actions directory.

```
namespace     = "admin/CESI"
github_org    = "umn-CESI"
repository    = ["hcp-vault-terraform-examples", "repo_2"]
vault_address = "INSERT_VAULT_ADDRESS"
```

## GitHub Actions Sample Workflow

See [sample actions file](../.github/workflows/vault_github_actions_example.yml) in this repository.

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
| [vault_generic_secret.global_example](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/generic_secret) | resource |
| [vault_generic_secret.single_repo_example](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/generic_secret) | resource |
| [vault_jwt_auth_backend.github](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/jwt_auth_backend) | resource |
| [vault_jwt_auth_backend_role.global_github_actions](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/jwt_auth_backend_role) | resource |
| [vault_jwt_auth_backend_role.single_repo_github_actions](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/jwt_auth_backend_role) | resource |
| [vault_policy.global_github_actions](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/policy) | resource |
| [vault_policy.single_repo_github_actions](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_org"></a> [github\_org](#input\_github\_org) | Name of Github Org (ex: umn-secm) | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Prefix with admin/ (ex: admin/secm, admin/secm/subteamA) | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | List of repositories to create vault roles/policies for (ex: ["hcp-vault-terraform-examples", "repo\_2"]) | `list(string)` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault address | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->