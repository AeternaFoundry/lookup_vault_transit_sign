variable "transit_sign_lookup" {
  description = <<EOT
Map of transit_sign_lookup, attributes below
Required:
    - name
    - path
Optional:
    - batch_input
    - batch_results
    - context
    - hash_algorithm
    - input
    - key_version
    - marshaling_algorithm
    - namespace
    - prehashed
    - reference
    - salt_length
    - signature
    - signature_algorithm
    - signature_context
EOT

  type = map(object({
    name                 = string
    path                 = string
    batch_input          = optional(list(any))
    batch_results        = optional(list(any))
    context              = optional(string)
    hash_algorithm       = optional(string)
    input                = optional(string)
    key_version          = optional(number)
    marshaling_algorithm = optional(string)
    namespace            = optional(string)
    prehashed            = optional(bool)
    reference            = optional(string)
    salt_length          = optional(string)
    signature            = optional(string)
    signature_algorithm  = optional(string)
    signature_context    = optional(string)
  }))
}

