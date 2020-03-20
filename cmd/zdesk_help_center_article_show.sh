# https://developer.zendesk.com/rest_api/docs/help_center/articles#show-article
zdesk_help_center_article_show () {
  method=GET
  url="$(echo "/api/v2/help_center/{locale}/articles/{id}.json" | sed \
    -e "s/{locale}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}