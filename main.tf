resource "aws_kms_key" "this" {
  count                    = var.enabled ? 1 : 0
  description              = var.description
  key_usage                = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
  policy                   = var.policy
  deletion_window_in_days  = var.deletion_window_in_days
  is_enabled               = var.is_enabled
  enable_key_rotation      = var.enable_key_rotation
  tags                     = var.tags
}

resource "aws_kms_alias" "this" {
  count         = var.enabled ? 1 : 0
  name          = format("alias/%s", var.name)
  target_key_id = join("", aws_kms_key.this.*.key_id)
  depends_on    = [aws_kms_key.this]
}
