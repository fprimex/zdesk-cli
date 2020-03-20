# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-ticket-attribute-values
zdesk_routing_ticket_instance_values () {
  method=GET
  url="$(echo "/api/v2/routing/tickets/{ticket_id}/instance_values.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}