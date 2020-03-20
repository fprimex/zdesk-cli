# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#show-membership
zdesk_organization_membership_show () {
  method=GET
  url="$(echo "/api/v2/organization_memberships/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}