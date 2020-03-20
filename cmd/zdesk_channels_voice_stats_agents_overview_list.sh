# https://developer.zendesk.com/rest_api/docs/voice-api/stats#show-agents-overview
zdesk_channels_voice_stats_agents_overview_list () {
  method=GET
  url=/api/v2/channels/voice/stats/agents_overview.json
}