# https://developer.zendesk.com/rest_api/docs/help_center/posts#show-post
zdesk_community_post_show () {
  method=GET
  url="$(echo "/api/v2/community/posts/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}