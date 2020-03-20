# https://developer.zendesk.com/rest_api/docs/core/ticket_forms#reorder-ticket-forms
zdesk_ticket_forms_reorder () {
  method=PUT
  url=/api/v2/ticket_forms/reorder.json
}