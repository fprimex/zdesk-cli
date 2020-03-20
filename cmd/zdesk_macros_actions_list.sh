# https://developer.zendesk.com/rest_api/docs/core/macros#list-supported-actions-for-macros
zdesk_macros_actions_list () {
  method=GET
  url=/api/v2/macros/actions.json
}