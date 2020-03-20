# https://developer.zendesk.com/rest_api/docs/help_center/article_attachments#show-article-attachment
zdesk_help_center_articles_attachment_show () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/attachments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/attachments/{id}.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}