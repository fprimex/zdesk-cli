# https://developer.zendesk.com/rest_api/docs/help_center/labels#list-article-labels
zdesk_help_center_article_labels () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{id}/labels.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}