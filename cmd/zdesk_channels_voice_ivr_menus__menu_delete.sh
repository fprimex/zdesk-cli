# https://developer.zendesk.com/rest_api/docs/voice-api/ivrs#delete-ivr-menu
zdesk_channels_voice_ivr_menus__menu_delete () {
  method=DELETE
  url="$(echo "/api/v2/channels/voice/ivr/{ivr_id}/menus//{ivr_id}/menus/{id}.json" | sed \
    -e "s/{ivr_id}"/"$1"/ \
    -e "s/{ivr_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
  shift
}