# https://developer.zendesk.com/rest_api/docs/core/user_fields#delete-user-field
zdesk_user_field_delete () {
  method=DELETE
  url="$(echo "/api/v2/user_fields/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}