# https://developer.zendesk.com/rest_api/docs/voice-api/ivrs#show-ivr-route
zdesk_channels_voice_ivr_menu_route_show () {
  method=GET
  url="$(echo "/api/v2/channels/voice/ivr/{ivr_id}/menus/{menu_id}/routes/{id}.json" | sed \
    -e "s/{ivr_id}"/"$1"/ \
    -e "s/{menu_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
  shift
}