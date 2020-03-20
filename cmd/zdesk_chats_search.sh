# https://developer.zendesk.com/rest_api/docs/chat/chats#search-chats
zdesk_chats_search () {
  method=GET
  url=/api/v2/chats/search
  [ -n "$1" ] && query="$query&q=$1"
  shift
}