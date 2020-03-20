# https://developer.zendesk.com/rest_api/docs/core/group_memberships#show-membership
zdesk_group_membership_show () {
  method=GET
  url="$(echo "/api/v2/group_memberships/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}