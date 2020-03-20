# https://developer.zendesk.com/rest_api/docs/chat/apis#example-response
zdesk_stream_chats_missed_chats_list () {
  method=GET
  url=/stream/chats/missed_chats
  [ -n "$1" ] && query="$query&window=$1"
  shift
}