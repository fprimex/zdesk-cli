# https://developer.zendesk.com/rest_api/docs/chat/bans#delete-ban
zdesk_ban_delete () {
  method=DELETE
  url="$(echo "/api/v2/bans/{ban_id}" | sed \
    -e "s/{ban_id}"/"$1"/ \
  )"
  shift
}