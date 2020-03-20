# https://developer.zendesk.com/rest_api/docs/help_center/posts#list-posts
zdesk_community_topic_posts () {
  method=GET
  url="$(echo "/api/v2/community/topics/{id}/posts.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}