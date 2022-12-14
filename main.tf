terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.9.1"
    }
  }
}

module "secretsmanager-to-vault-migration" {
  source  = "samgabrail/secretsmanager-to-vault-migration/vault"
  version = "0.0.4"
  secret_names     = var.secret_names
  aws_region = var.aws_region
  vault_kv_path = var.vault_kv_path
  vault_namespace = var.vault_namespace
}