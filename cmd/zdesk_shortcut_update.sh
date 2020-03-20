# https://developer.zendesk.com/rest_api/docs/chat/shortcuts#update-shortcut
zdesk_shortcut_update () {
  method=PUT
  url="$(echo "/api/v2/shortcuts/{shortcut_id}" | sed \
    -e "s/{shortcut_id}"/"$1"/ \
  )"
  shift
}