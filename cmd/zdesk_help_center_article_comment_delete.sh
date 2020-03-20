# https://developer.zendesk.com/rest_api/docs/help_center/comments#delete-comment
zdesk_help_center_article_comment_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/articles/{article_id}/comments/{id}.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}