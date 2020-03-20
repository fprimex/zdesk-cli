# https://developer.zendesk.com/rest_api/docs/help_center/article_attachments#list-article-attachments
zdesk_help_center_article_attachments () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/attachments.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{article_id}/attachments.json" | sed \ 
    -e "{article_id}" "$1" \ 
     )"
  shift
  fi
}