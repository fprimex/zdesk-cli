# https://developer.zendesk.com/rest_api/docs/core/ticket_metrics#show-ticket-metrics
zdesk_ticket_metric_show () {
  method=GET
  url="$(echo "/api/v2/ticket_metrics/{ticket_metric_id}.json" | sed \
    -e "s/{ticket_metric_id}"/"$1"/ \
  )"
  shift
}