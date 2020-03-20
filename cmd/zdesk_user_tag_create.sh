# https://developer.zendesk.com/rest_api/docs/core/tags#set-tags
zdesk_user_tag_create () {
  method=POST
  url="$(echo "/api/v2/users/{id}/tags.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}