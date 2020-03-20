# https://developer.zendesk.com/rest_api/docs/core/organizations#show-organizations-related-information
zdesk_organization_related () {
  method=GET
  url="$(echo "/api/v2/organizations/{id}/related.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}