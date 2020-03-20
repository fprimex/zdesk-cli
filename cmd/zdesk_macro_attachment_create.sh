# https://developer.zendesk.com/rest_api/docs/core/macros#create-macro-attachment
zdesk_macro_attachment_create () {
  method=POST
  url="$(echo "/api/v2/macros/{macro_id}/attachments.json" | sed \
    -e "s/{macro_id}"/"$1"/ \
  )"
  shift
}