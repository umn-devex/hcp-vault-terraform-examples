# HCP Vault Terraform Examples

This repository is intended to provide examples for how to configure your team's namespace to integrate with various secret engines and auth methods. Users can clone this repository down to use for their own use cases.

Please view the different examples below.

## Setup

1. If you would like to use your own permissions in vault and have the vault CLI installed, the easiest way to get started is to run the following command which will generate a 1 hour token. You can also use the `VAULT_TOKEN`, `VAULT_ADDR`, & `VAULT_NAMESPACE` environmental variables instead. See the [vault terraform provider documentation](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#provider-arguments) for more options. See [this article](https://docs.secm.oit.umn.edu/Accessing%20Vault/cli/#cli-login) for the UMN vault address.

    ```
    vault login --method=saml --namespace=admin
    ```

2. Next, configure your provider with the following block:

    ```
    provider "vault" {
      address          = <VAULT ADDRESS>
      namespace        = admin/<CESI>
      skip_child_token = true
    }

    terraform {
      required_providers {
        vault = {
          source  = "hashicorp/vault"
          version = "4.7.0"
        }
      }
    }
    ```

## Example Modules

| Name | Description |
|------| ----------- |
[Ansible](./ansible) | Utilizing an approle to get credentials from Vault within AWX or an Ansible playbook.
[Approle](./approle) | Create an approle authentication method and associate a role with an assigned policy.
[GitHub Actions Example](./github_actions) | Creating policies to allow a GitHub Actions pipeline to pull from Vault.
[Key Version 2 Secrets Engine](./kvv2-secrets-engine) | Enable a kv v2 secrets engine and create a policy for access.

