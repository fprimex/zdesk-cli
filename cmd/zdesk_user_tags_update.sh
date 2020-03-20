# https://developer.zendesk.com/rest_api/docs/core/tags#add-tags
zdesk_user_tags_update () {
  method=PUT
  url="$(echo "/api/v2/users/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}