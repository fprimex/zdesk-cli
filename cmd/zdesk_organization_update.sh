# https://developer.zendesk.com/rest_api/docs/core/organizations#update-organization
zdesk_organization_update () {
  method=PUT
  url="$(echo "/api/v2/organizations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}