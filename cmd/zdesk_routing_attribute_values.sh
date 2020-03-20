# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-attribute-values-for-an-attribute
zdesk_routing_attribute_values () {
  method=GET
  url="$(echo "/api/v2/routing/attributes/{attribute_id}/values.json" | sed \
    -e "s/{attribute_id}"/"$1"/ \
  )"
  shift
}