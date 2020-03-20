# https://developer.zendesk.com/rest_api/docs/core/views#bulk-delete-views
zdesk_views_destroy_many () {
  method=DELETE
  url=/api/v2/views/destroy_many.json
}