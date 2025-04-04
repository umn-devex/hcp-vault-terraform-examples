# Inject sample secrets into vault for this demo to illustrate the proper pathing. 
# DO NOT use this method to store real secrets as those should not be plaintext in code (or likely in terraform state either).

resource "vault_kv_secret_v2" "ansible" {
  mount               = "secret"
  name                = "ansible/test"
  delete_all_versions = true
  data_json = jsonencode(
    {
      zip = "zap",
      foo = "bar"
    }
  )
}

