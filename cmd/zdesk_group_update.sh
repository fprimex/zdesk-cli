# https://developer.zendesk.com/rest_api/docs/core/groups#update-group
zdesk_group_update () {
  method=PUT
  url="$(echo "/api/v2/groups/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}