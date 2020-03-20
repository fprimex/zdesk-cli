# https://developer.zendesk.com/rest_api/docs/chat/chats#get-chat
zdesk_chat_show () {
  method=GET
  url="$(echo "/api/v2/chats/{chat_id}" | sed \
    -e "s/{chat_id}"/"$1"/ \
  )"
  shift
}