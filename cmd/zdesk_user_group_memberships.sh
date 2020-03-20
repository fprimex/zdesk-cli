# https://developer.zendesk.com/rest_api/docs/core/group_memberships#list-memberships
zdesk_user_group_memberships () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/group_memberships.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}