# https://developer.zendesk.com/rest_api/docs/chat/chats#list-all-chats
zdesk_chats_list () {
  method=GET
  url=/api/v2/chats
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}