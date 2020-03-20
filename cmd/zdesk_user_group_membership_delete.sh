# https://developer.zendesk.com/rest_api/docs/core/group_memberships#delete-membership
zdesk_user_group_membership_delete () {
  method=DELETE
  url="$(echo "/api/v2/users/{user_id}/group_memberships/{id}.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}