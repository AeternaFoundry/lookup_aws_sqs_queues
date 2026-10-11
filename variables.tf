variable "sqs_queues_lookup" {
  description = <<EOT
Map of sqs_queues_lookup, attributes below
Optional:
    - queue_name_prefix
    - region
EOT

  type = map(object({
    queue_name_prefix = optional(string)
    region            = optional(string)
  }))
}

