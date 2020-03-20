# https://developer.zendesk.com/rest_api/docs/core/ticket_metrics#show-ticket-metrics
zdesk_ticket_metrics () {
  method=GET
  url="$(echo "/api/v2/tickets/{ticket_id}/metrics.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}