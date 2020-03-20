# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#set-ticket-attribute-values
zdesk_routing_ticket_instance_value_create () {
  method=POST
  url="$(echo "/api/v2/routing/tickets/{ticket_id}/instance_values" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}