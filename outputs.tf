output "sqs_queues_lookup_id" {
  description = "Map of id values across all sqs_queues_lookup, keyed the same as var.sqs_queues_lookup"
  value       = { for k, v in data.aws_sqs_queues.sqs_queues_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sqs_queues_lookup_queue_name_prefix" {
  description = "Map of queue_name_prefix values across all sqs_queues_lookup, keyed the same as var.sqs_queues_lookup"
  value       = { for k, v in data.aws_sqs_queues.sqs_queues_lookup : k => v.queue_name_prefix if v.queue_name_prefix != null && length(v.queue_name_prefix) > 0 }
}
output "sqs_queues_lookup_queue_urls" {
  description = "Map of queue_urls values across all sqs_queues_lookup, keyed the same as var.sqs_queues_lookup"
  value       = { for k, v in data.aws_sqs_queues.sqs_queues_lookup : k => v.queue_urls if v.queue_urls != null && length(v.queue_urls) > 0 }
}
output "sqs_queues_lookup_region" {
  description = "Map of region values across all sqs_queues_lookup, keyed the same as var.sqs_queues_lookup"
  value       = { for k, v in data.aws_sqs_queues.sqs_queues_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

