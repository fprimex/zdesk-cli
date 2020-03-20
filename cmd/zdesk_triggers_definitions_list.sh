# https://developer.zendesk.com/rest_api/docs/core/triggers#list-trigger-action-and-condition-definitions
zdesk_triggers_definitions_list () {
  method=GET
  url=/api/v2/triggers/definitions.json
}