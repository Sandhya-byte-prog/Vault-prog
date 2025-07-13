provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_policy" "ci_policy" {
  name   = "ci-policy"
  policy = file("${path.module}/policies/ci-policy.hcl")
}
