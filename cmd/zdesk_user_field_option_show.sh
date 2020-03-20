# https://developer.zendesk.com/rest_api/docs/core/user_fields#show-a-user-field-option
zdesk_user_field_option_show () {
  method=GET
  url="$(echo "/api/v2/user_fields/{field_id}/options/{id}.json" | sed \
    -e "s/{field_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}