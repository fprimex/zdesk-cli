# https://developer.zendesk.com/rest_api/docs/core/user_fields#create-or-update-a-user-field-option
zdesk_user_field_option_create () {
  method=POST
  url="$(echo "/api/v2/user_fields/{field_id}/options.json" | sed \
    -e "s/{field_id}"/"$1"/ \
  )"
  shift
}