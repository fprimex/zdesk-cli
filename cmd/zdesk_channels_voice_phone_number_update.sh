# https://developer.zendesk.com/rest_api/docs/voice-api/phone_numbers#update-phone-numbers
zdesk_channels_voice_phone_number_update () {
  method=PUT
  url="$(echo "/api/v2/channels/voice/phone_numbers/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}