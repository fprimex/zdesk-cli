# https://developer.zendesk.com/rest_api/docs/core/groups#delete-group
zdesk_group_delete () {
  method=DELETE
  url="$(echo "/api/v2/groups/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}