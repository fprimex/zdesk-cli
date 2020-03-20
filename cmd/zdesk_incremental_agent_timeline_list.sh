# https://developer.zendesk.com/rest_api/docs/chat/incremental_export#incremental-agent-timeline-export
zdesk_incremental_agent_timeline_list () {
  method=GET
  url=/api/v2/incremental/agent_timeline
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}