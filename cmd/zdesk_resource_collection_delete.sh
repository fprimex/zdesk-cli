# https://developer.zendesk.com/rest_api/docs/core/resource_collections#delete-a-resource-collection
zdesk_resource_collection_delete () {
  method=DELETE
  url="$(echo "/api/v2/resource_collections/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}