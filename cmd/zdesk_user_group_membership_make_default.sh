# https://developer.zendesk.com/rest_api/docs/core/group_memberships#set-membership-as-default
zdesk_user_group_membership_make_default () {
  method=PUT
  url="$(echo "/api/v2/users/{user_id}/group_memberships/{membership_id}/make_default.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{membership_id}"/"$1"/ \
  )"
  shift
  shift
}