# https://developer.zendesk.com/rest_api/docs/core/macros#list-active-macros
zdesk_macros_active_list () {
  method=GET
  url=/api/v2/macros/active.json
}