# https://developer.zendesk.com/rest_api/docs/voice-api/incremental_export#incremental-call-legs-export
zdesk_channels_voice_stats_incremental_legs_list () {
  method=GET
  url=/api/v2/channels/voice/stats/incremental/legs.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}