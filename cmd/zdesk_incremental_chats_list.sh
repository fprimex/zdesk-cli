# https://developer.zendesk.com/rest_api/docs/chat/incremental_export#start-time
zdesk_incremental_chats_list () {
  method=GET
  url=/api/v2/incremental/chats
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}