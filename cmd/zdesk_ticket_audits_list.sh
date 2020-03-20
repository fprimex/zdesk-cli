# https://developer.zendesk.com/rest_api/docs/core/ticket_audits#list-all-ticket-audits
zdesk_ticket_audits_list () {
  method=GET
  url=/api/v2/ticket_audits.json
  [ -n "$1" ] && query="$query&cursor=$1"
  shift
}