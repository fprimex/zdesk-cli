# https://developer.zendesk.com/rest_api/docs/voice-api/recordings#delete-recording
zdesk_channels_voice_call_recordings_delete () {
  method=DELETE
  url="$(echo "/api/v2/channels/voice/calls/{id}/recordings.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}