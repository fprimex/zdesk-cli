# https://developer.zendesk.com/rest_api/docs/core/user_fields#list-user-field-options
zdesk_user_field_options () {
  method=GET
  url="$(echo "/api/v2/user_fields/{field_id}/options.json" | sed \
    -e "s/{field_id}"/"$1"/ \
  )"
  shift
}