variable "name" {
  type        = string
  description = "Name of the alias"
  default     = ""
}

variable "description" {
  type        = string
  description = "The description of the key as viewed in AWS console."
  default     = ""
}

variable "enabled" {
  type        = bool
  description = "Do you want to create KMS key"
  default     = true
}


variable "key_usage" {
  type        = string
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT."
  default     = "ENCRYPT_DECRYPT"
}

variable "customer_master_key_spec" {
  type        = string
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT"
  default     = "SYMMETRIC_DEFAULT"
}

variable "policy" {
  type        = string
  description = "A valid KMS policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy."
  default     = ""
}

variable "deletion_window_in_days" {
  type        = number
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days."
  default     = 30
}

variable "is_enabled" {
  type        = bool
  description = "Specifies whether the key is enabled. Defaults to true."
  default     = true
}

variable "enable_key_rotation" {
  type        = bool
  description = "Specifies whether key rotation is enabled. Defaults to true"
  default     = true
}

variable "tags" {
  type        = map(strings)
  description = "A mapping of tags to assign to the object."
  default     = {}
}
