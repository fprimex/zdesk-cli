# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#create-attribute-value
zdesk_routing_attribute_value_create () {
  method=POST
  url="$(echo "/api/v2/routing/attributes/{attribute_id}/values.json" | sed \
    -e "s/{attribute_id}"/"$1"/ \
  )"
  shift
}