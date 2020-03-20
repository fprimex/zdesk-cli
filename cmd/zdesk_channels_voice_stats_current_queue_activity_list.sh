# https://developer.zendesk.com/rest_api/docs/voice-api/stats#show-current-queue-activity
zdesk_channels_voice_stats_current_queue_activity_list () {
  method=GET
  url=/api/v2/channels/voice/stats/current_queue_activity.json
}