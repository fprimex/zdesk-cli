# https://developer.zendesk.com/rest_api/docs/chat/chats#update-chat
zdesk_chat_update () {
  method=PUT
  url="$(echo "/api/v2/chats/{chat_id}" | sed \
    -e "s/{chat_id}"/"$1"/ \
  )"
  shift
}