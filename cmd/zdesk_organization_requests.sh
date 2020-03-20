# https://developer.zendesk.com/rest_api/docs/core/requests#list-requests
zdesk_organization_requests () {
  method=GET
  url="$(echo "/api/v2/organizations/{id}/requests.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}