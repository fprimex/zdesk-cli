# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#show-many-ticket-forms
zdesk_ticket_forms_show_many () {
  method=GET
  url=/api/v2/ticket_forms/show_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}