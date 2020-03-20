# https://developer.zendesk.com/rest_api/docs/core/user_fields#reorder-user-field
zdesk_user_fields_reorder () {
  method=PUT
  url=/api/v2/user_fields/reorder.json
}