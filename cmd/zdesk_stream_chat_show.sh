# https://developer.zendesk.com/rest_api/docs/chat/apis#get-single-metric-for-chats
zdesk_stream_chat_show () {
  method=GET
  url="$(echo "/stream/chats/{metric_key}" | sed \
    -e "s/{metric_key}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&department_id=$1"
  shift
  [ -n "$1" ] && query="$query&window=$1"
  shift
}