# https://developer.zendesk.com/rest_api/docs/chat/shortcuts#get-shortcut
zdesk_shortcut_show () {
  method=GET
  url="$(echo "/api/v2/shortcuts/{shortcut_id}" | sed \
    -e "s/{shortcut_id}"/"$1"/ \
  )"
  shift
}