# https://developer.zendesk.com/rest_api/docs/core/group_memberships#delete-membership
zdesk_group_membership_delete () {
  method=DELETE
  url="$(echo "/api/v2/group_memberships/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}