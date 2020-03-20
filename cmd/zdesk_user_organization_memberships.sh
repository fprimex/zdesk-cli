# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#list-memberships
zdesk_user_organization_memberships () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/organization_memberships.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}