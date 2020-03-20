# https://developer.zendesk.com/rest_api/docs/voice-api/greetings#get-greeting-audio-file
zdesk_channels_voice_greeting_recording () {
  method=GET
  url="$(echo "/api/v2/channels/voice/greetings/{id}/recording.mp3" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}