# https://developer.zendesk.com/rest_api/docs/voice-api/ivrs#update-ivr
zdesk_channels_voice_ivr_update () {
  method=PUT
  url="$(echo "/api/v2/channels/voice/ivr/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}