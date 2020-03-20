# https://developer.zendesk.com/rest_api/docs/core/automations#delete-automation
zdesk_automation_delete () {
  method=DELETE
  url="$(echo "/api/v2/automations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}