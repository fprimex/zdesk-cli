# https://developer.zendesk.com/rest_api/docs/core/ticket_skips#list-skips-for-the-current-account
zdesk_user_skips () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/skips.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}