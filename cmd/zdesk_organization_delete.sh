# https://developer.zendesk.com/rest_api/docs/core/organizations#delete-organization
zdesk_organization_delete () {
  method=DELETE
  url="$(echo "/api/v2/organizations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}