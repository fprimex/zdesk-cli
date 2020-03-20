# https://developer.zendesk.com/rest_api/docs/core/ticket_import#ticket-bulk-import
zdesk_imports_tickets_create_many () {
  method=POST
  url=/api/v2/imports/tickets/create_many.json
}