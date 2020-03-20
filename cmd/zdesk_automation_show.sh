# https://developer.zendesk.com/rest_api/docs/core/automations#show-automation
zdesk_automation_show () {
  method=GET
  url="$(echo "/api/v2/automations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}