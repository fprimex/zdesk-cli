# https://developer.zendesk.com/rest_api/docs/help_center/labels#list-all-labels
zdesk_help_center_articles_labels_list () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/labels.json" | sed \
  )"
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/labels.json" | sed \ 
     )"
  fi
}