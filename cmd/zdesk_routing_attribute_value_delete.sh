# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#delete-attribute-value
zdesk_routing_attribute_value_delete () {
  method=DELETE
  url="$(echo "/api/v2/routing/attributes/{attribute_id}/values/{attribute_value_id}.json" | sed \
    -e "s/{attribute_id}"/"$1"/ \
    -e "s/{attribute_value_id}"/"$1"/ \
  )"
  shift
  shift
}