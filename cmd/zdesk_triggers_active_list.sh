# https://developer.zendesk.com/rest_api/docs/core/triggers#list-active-triggers
zdesk_triggers_active_list () {
  method=GET
  url=/api/v2/triggers/active.json
}