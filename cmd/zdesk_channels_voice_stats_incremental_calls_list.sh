# https://developer.zendesk.com/rest_api/docs/voice-api/incremental_export#request-parameters
zdesk_channels_voice_stats_incremental_calls_list () {
  method=GET
  url=/api/v2/channels/voice/stats/incremental/calls.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}