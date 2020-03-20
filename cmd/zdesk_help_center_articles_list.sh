# https://developer.zendesk.com/rest_api/docs/help_center/articles#list-articles
zdesk_help_center_articles_list () {
  method=GET
  url="$(echo "/api/v2/help_center/articles.json" | sed \
  )"
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles.json" | sed \ 
     )"
  fi
  [ -n "$1" ] && query="$query&label_names=$1"
  shift
}