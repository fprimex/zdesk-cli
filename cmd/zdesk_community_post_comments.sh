# https://developer.zendesk.com/rest_api/docs/help_center/post_comments#list-comments
zdesk_community_post_comments () {
  method=GET
  url="$(echo "/api/v2/community/posts/{post_id}/comments.json" | sed \
    -e "s/{post_id}"/"$1"/ \
  )"
  shift
}