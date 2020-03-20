# https://developer.zendesk.com/rest_api/docs/core/organizations#show-organization
zdesk_organization_show () {
  method=GET
  url="$(echo "/api/v2/organizations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}