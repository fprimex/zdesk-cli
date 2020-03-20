# https://developer.zendesk.com/rest_api/docs/help_center/post_comments#update-comment
zdesk_community_post_comment_update () {
  method=PUT
  url="$(echo "/api/v2/community/posts/{post_id}/comments/{id}.json" | sed \
    -e "s/{post_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}