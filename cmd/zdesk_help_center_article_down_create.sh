# https://developer.zendesk.com/rest_api/docs/help_center/votes#create-vote
zdesk_help_center_article_down_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{id}/down.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}