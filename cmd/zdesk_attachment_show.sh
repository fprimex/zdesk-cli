# https://developer.zendesk.com/rest_api/docs/core/attachments#show-attachment
zdesk_attachment_show () {
  method=GET
  url="$(echo "/api/v2/attachments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}