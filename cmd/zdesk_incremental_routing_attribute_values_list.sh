# https://developer.zendesk.com/rest_api/docs/core/incremental_skill_based_routing#incremental-attribute-values-export
zdesk_incremental_routing_attribute_values_list () {
  method=GET
  url=/api/v2/incremental/routing/attribute_values.json
}