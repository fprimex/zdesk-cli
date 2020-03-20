# https://developer.zendesk.com/rest_api/docs/core/incremental_skill_based_routing#incremental-attributes-export
zdesk_incremental_routing_attributes_list () {
  method=GET
  url=/api/v2/incremental/routing/attributes.json
}