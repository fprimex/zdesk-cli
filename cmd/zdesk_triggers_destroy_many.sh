# https://developer.zendesk.com/rest_api/docs/core/triggers#bulk-delete-triggers
zdesk_triggers_destroy_many () {
  method=DELETE
  url=/api/v2/triggers/destroy_many.json
}