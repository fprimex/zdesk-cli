# https://developer.zendesk.com/rest_api/docs/core/automations#bulk-delete-automations
zdesk_automations_destroy_many () {
  method=DELETE
  url=/api/v2/automations/destroy_many.json
}