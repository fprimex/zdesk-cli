# https://developer.zendesk.com/rest_api/docs/help_center/labels#create-label
zdesk_help_center_article_label_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{id}/labels.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}