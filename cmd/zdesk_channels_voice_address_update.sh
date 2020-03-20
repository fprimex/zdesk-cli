# https://developer.zendesk.com/rest_api/docs/voice-api/addresses#update-address
zdesk_channels_voice_address_update () {
  method=PUT
  url="$(echo "/api/v2/channels/voice/addresses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}