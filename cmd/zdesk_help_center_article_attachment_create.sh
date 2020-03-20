# https://developer.zendesk.com/rest_api/docs/help_center/article_attachments#create-article-attachment
zdesk_help_center_article_attachment_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{article_id}/attachments.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
}