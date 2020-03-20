# https://developer.zendesk.com/rest_api/docs/voice-api/ivrs#show-ivr
zdesk_channels_voice_ivr_show () {
  method=GET
  url="$(echo "/api/v2/channels/voice/ivr/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}