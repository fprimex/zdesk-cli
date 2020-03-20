# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-account-attributes
zdesk_routing_attributes_list () {
  method=GET
  url=/api/v2/routing/attributes.json
}