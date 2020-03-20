# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#delete-attribute
zdesk_routing_attribute_delete () {
  method=DELETE
  url="$(echo "/api/v2/routing/attributes/{attribute_id}.json" | sed \
    -e "s/{attribute_id}"/"$1"/ \
  )"
  shift
}