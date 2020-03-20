# https://developer.zendesk.com/rest_api/docs/help_center/post_comments#create-comment
zdesk_community_post_comment_create () {
  method=POST
  url="$(echo "/api/v2/community/posts/{post_id}/comments.json" | sed \
    -e "s/{post_id}"/"$1"/ \
  )"
  shift
}