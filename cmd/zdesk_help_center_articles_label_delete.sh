# https://developer.zendesk.com/rest_api/docs/help_center/labels#delete-label
zdesk_help_center_articles_label_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/articles/labels/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}