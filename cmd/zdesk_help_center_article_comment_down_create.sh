# https://developer.zendesk.com/rest_api/docs/help_center/votes#create-vote
zdesk_help_center_article_comment_down_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{article_id}/comments/{id}/down.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}