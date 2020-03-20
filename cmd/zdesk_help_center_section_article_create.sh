# https://developer.zendesk.com/rest_api/docs/help_center/articles#create-article
zdesk_help_center_section_article_create () {
  method=POST
  url="$(echo "/api/v2/help_center/sections/{id}/articles.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/sections/{id}/articles.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}