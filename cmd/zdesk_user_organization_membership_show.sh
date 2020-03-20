# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#show-membership
zdesk_user_organization_membership_show () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/organization_memberships/{id}.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}