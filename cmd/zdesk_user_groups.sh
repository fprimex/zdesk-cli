# https://developer.zendesk.com/rest_api/docs/core/groups#list-groups
zdesk_user_groups () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/groups.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}