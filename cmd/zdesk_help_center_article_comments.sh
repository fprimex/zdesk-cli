# https://developer.zendesk.com/rest_api/docs/help_center/comments#list-comments
zdesk_help_center_article_comments () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{id}/comments.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{id}/comments.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}