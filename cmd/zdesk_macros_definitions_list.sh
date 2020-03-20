# https://developer.zendesk.com/rest_api/docs/core/macros#list-macro-action-definitions
zdesk_macros_definitions_list () {
  method=GET
  url=/api/v2/macros/definitions.json
}