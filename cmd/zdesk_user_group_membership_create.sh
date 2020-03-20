# https://developer.zendesk.com/rest_api/docs/core/group_memberships#create-membership
zdesk_user_group_membership_create () {
  method=POST
  url="$(echo "/api/v2/users/{user_id}/group_memberships.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}