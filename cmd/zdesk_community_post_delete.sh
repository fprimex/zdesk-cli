# https://developer.zendesk.com/rest_api/docs/help_center/posts#delete-post
zdesk_community_post_delete () {
  method=DELETE
  url="$(echo "/api/v2/community/posts/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}