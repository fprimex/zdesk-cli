# https://developer.zendesk.com/rest_api/docs/chat/bans#get-ban
zdesk_ban_show () {
  method=GET
  url="$(echo "/api/v2/bans/{ban_id}" | sed \
    -e "s/{ban_id}"/"$1"/ \
  )"
  shift
}