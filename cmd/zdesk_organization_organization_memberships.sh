# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#list-memberships
zdesk_organization_organization_memberships () {
  method=GET
  url="$(echo "/api/v2/organizations/{organization_id}/organization_memberships.json" | sed \
    -e "s/{organization_id}"/"$1"/ \
  )"
  shift
}