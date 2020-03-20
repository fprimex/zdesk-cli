# https://developer.zendesk.com/rest_api/docs/voice-api/availabilities#show-availability
zdesk_channels_voice_availability_show () {
  method=GET
  url="$(echo "/api/v2/channels/voice/availabilities/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}