# https://developer.zendesk.com/rest_api/docs/voice-api/greetings#delete-greeting
zdesk_channels_voice_greeting_delete () {
  method=DELETE
  url="$(echo "/api/v2/channels/voice/greetings/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}