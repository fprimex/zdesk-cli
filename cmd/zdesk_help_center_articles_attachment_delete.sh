# https://developer.zendesk.com/rest_api/docs/help_center/article_attachments#delete-article-attachment
zdesk_help_center_articles_attachment_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/articles/attachments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}