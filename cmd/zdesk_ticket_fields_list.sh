# https://developer.zendesk.com/rest_api/docs/core/ticket_fields#list-ticket-fields
zdesk_ticket_fields_list () {
  method=GET
  url=/api/v2/ticket_fields.json
}