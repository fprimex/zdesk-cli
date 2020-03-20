# https://developer.zendesk.com/rest_api/docs/core/macros#show-macro-attachment
zdesk_macros_attachment_show () {
  method=GET
  url="$(echo "/api/v2/macros/attachments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}