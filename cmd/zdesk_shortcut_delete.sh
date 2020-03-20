# https://developer.zendesk.com/rest_api/docs/chat/shortcuts#delete-shortcut
zdesk_shortcut_delete () {
  method=DELETE
  url="$(echo "/api/v2/shortcuts/{shortcut_id}" | sed \
    -e "s/{shortcut_id}"/"$1"/ \
  )"
  shift
}