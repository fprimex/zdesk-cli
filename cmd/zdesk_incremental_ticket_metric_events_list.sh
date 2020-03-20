# https://developer.zendesk.com/rest_api/docs/core/ticket_metric_events#list-ticket-metric-events
zdesk_incremental_ticket_metric_events_list () {
  method=GET
  url=/api/v2/incremental/ticket_metric_events.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}