# https://developer.zendesk.com/rest_api/docs/help_center/articles#associate-attachments-in-bulk-to-article
zdesk_help_center_article_bulk_attachment_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{id}/bulk_attachments.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}