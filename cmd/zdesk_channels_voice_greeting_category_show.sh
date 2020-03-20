# https://developer.zendesk.com/rest_api/docs/voice-api/greetings#show-greeting-category
zdesk_channels_voice_greeting_category_show () {
  method=GET
  url="$(echo "/api/v2/channels/voice/greeting_categories/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}