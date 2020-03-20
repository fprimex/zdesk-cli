# https://developer.zendesk.com/rest_api/docs/core/automations#list-active-automations
zdesk_automations_active_list () {
  method=GET
  url=/api/v2/automations/active.json
}