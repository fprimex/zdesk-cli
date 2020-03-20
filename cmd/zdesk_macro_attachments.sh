# https://developer.zendesk.com/rest_api/docs/core/macros#list-macro-attachments
zdesk_macro_attachments () {
  method=GET
  url="$(echo "/api/v2/macros/{macro_id}/attachments.json" | sed \
    -e "s/{macro_id}"/"$1"/ \
  )"
  shift
}