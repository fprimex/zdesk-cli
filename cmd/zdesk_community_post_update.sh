# https://developer.zendesk.com/rest_api/docs/help_center/posts#update-post
zdesk_community_post_update () {
  method=PUT
  url="$(echo "/api/v2/community/posts/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}