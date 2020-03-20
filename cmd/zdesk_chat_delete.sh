# https://developer.zendesk.com/rest_api/docs/chat/chats#delete-chat
zdesk_chat_delete () {
  method=DELETE
  url="$(echo "/api/v2/chats/{chat_id}" | sed \
    -e "s/{chat_id}"/"$1"/ \
  )"
  shift
}