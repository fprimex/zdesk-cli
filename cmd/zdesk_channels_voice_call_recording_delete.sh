# https://developer.zendesk.com/rest_api/docs/voice-api/recordings#delete-recording-by-type
zdesk_channels_voice_call_recording_delete () {
  method=DELETE
  url="$(echo "/api/v2/channels/voice/calls/{id}/recordings/{recording_type}.json" | sed \
    -e "s/{id}"/"$1"/ \
    -e "s/{recording_type}"/"$1"/ \
  )"
  shift
  shift
}