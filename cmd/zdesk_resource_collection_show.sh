# https://developer.zendesk.com/rest_api/docs/core/resource_collections#retrieve-a-resource-collection
zdesk_resource_collection_show () {
  method=GET
  url="$(echo "/api/v2/resource_collections/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}