data "aws_sqs_queues" "sqs_queues_lookup" {
  for_each = var.sqs_queues_lookup

  queue_name_prefix = each.value.queue_name_prefix
  region            = each.value.region
}

