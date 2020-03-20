# https://developer.zendesk.com/rest_api/docs/chat/apis#get-all-chat-metrics
zdesk_stream_chats_list () {
  method=GET
  url=/stream/chats
  [ -n "$1" ] && query="$query&department_id=$1"
  shift
  [ -n "$1" ] && query="$query&window=$1"
  shift
}