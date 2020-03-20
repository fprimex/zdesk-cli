# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-routing-attribute-definitions
zdesk_routing_attributes_definitions_list () {
  method=GET
  url=/api/v2/routing/attributes/definitions.json
}