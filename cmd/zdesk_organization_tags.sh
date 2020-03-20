# https://developer.zendesk.com/rest_api/docs/core/tags#show-tags
zdesk_organization_tags () {
  method=GET
  url="$(echo "/api/v2/organizations/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}