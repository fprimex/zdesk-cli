# https://developer.zendesk.com/rest_api/docs/help_center/post_comments#delete-comment
zdesk_community_post_comment_delete () {
  method=DELETE
  url="$(echo "/api/v2/community/posts/{post_id}/comments/{id}.json" | sed \
    -e "s/{post_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}