# https://developer.zendesk.com/rest_api/docs/help_center/articles#list-articles
zdesk_help_center_category_articles () {
  method=GET
  url="$(echo "/api/v2/help_center/categories/{id}/articles.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/categories/{id}/articles.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}