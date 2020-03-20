# https://developer.zendesk.com/rest_api/docs/help_center/articles#update-article
zdesk_help_center_article_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/articles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{id}.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}