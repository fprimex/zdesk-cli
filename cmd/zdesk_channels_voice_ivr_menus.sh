# https://developer.zendesk.com/rest_api/docs/voice-api/ivrs#list-ivr-menus
zdesk_channels_voice_ivr_menus () {
  method=GET
  url="$(echo "/api/v2/channels/voice/ivr/{ivr_id}/menus.json" | sed \
    -e "s/{ivr_id}"/"$1"/ \
  )"
  shift
}