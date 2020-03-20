# https://developer.zendesk.com/rest_api/docs/help_center/articles#archive-article
zdesk_help_center_article_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/articles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}