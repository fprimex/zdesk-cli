# https://developer.zendesk.com/rest_api/docs/core/macros#bulk-delete-macros
zdesk_macros_destroy_many () {
  method=DELETE
  url=/api/v2/macros/destroy_many.json
}