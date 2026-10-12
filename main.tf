data "vault_transit_sign" "transit_sign_lookup" {
  for_each = var.transit_sign_lookup

  name                 = each.value.name
  path                 = each.value.path
  batch_input          = each.value.batch_input
  batch_results        = each.value.batch_results
  context              = each.value.context
  hash_algorithm       = each.value.hash_algorithm
  input                = each.value.input
  key_version          = each.value.key_version
  marshaling_algorithm = each.value.marshaling_algorithm
  namespace            = each.value.namespace
  prehashed            = each.value.prehashed
  reference            = each.value.reference
  salt_length          = each.value.salt_length
  signature            = each.value.signature
  signature_algorithm  = each.value.signature_algorithm
  signature_context    = each.value.signature_context
}

