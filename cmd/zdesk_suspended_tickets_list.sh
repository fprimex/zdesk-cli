# https://developer.zendesk.com/rest_api/docs/core/suspended_tickets#list-suspended-tickets
zdesk_suspended_tickets_list () {
  method=GET
  url=/api/v2/suspended_tickets.json
}