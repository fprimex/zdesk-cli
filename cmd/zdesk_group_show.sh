# https://developer.zendesk.com/rest_api/docs/core/groups#show-group
zdesk_group_show () {
  method=GET
  url="$(echo "/api/v2/groups/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}