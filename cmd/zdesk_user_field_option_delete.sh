# https://developer.zendesk.com/rest_api/docs/core/user_fields#delete-user-field-option
zdesk_user_field_option_delete () {
  method=DELETE
  url="$(echo "/api/v2/user_fields/{field_id}/options/{id}.json" | sed \
    -e "s/{field_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}