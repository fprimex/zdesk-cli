# https://developer.zendesk.com/rest_api/docs/voice-api/availabilities#update-availability
zdesk_channels_voice_availability_update () {
  method=PUT
  url="$(echo "/api/v2/channels/voice/availabilities/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}