# https://developer.zendesk.com/rest_api/docs/core/group_memberships#list-memberships
zdesk_group_memberships () {
  method=GET
  url="$(echo "/api/v2/groups/{group_id}/memberships.json" | sed \
    -e "s/{group_id}"/"$1"/ \
  )"
  shift
}