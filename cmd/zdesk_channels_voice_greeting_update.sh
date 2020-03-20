# https://developer.zendesk.com/rest_api/docs/voice-api/greetings#update-greetings
zdesk_channels_voice_greeting_update () {
  method=PUT
  url="$(echo "/api/v2/channels/voice/greetings/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}