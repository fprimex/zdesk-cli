# https://developer.zendesk.com/rest_api/docs/core/automations#update-automation
zdesk_automation_update () {
  method=PUT
  url="$(echo "/api/v2/automations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}