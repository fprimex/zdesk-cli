# https://developer.zendesk.com/rest_api/docs/core/tickets#list-deleted-tickets
zdesk_deleted_tickets_list () {
  method=GET
  url=/api/v2/deleted_tickets.json
}