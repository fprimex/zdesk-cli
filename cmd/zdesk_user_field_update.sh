# https://developer.zendesk.com/rest_api/docs/core/user_fields#update-user-fields
zdesk_user_field_update () {
  method=PUT
  url="$(echo "/api/v2/user_fields/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}