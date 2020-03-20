# https://developer.zendesk.com/rest_api/docs/help_center/comments#create-comment
zdesk_help_center_article_comment_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{id}/comments.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}