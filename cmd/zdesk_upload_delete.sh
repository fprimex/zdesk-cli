# https://developer.zendesk.com/rest_api/docs/core/attachments#delete-upload
zdesk_upload_delete () {
  method=DELETE
  url="$(echo "/api/v2/uploads/{token}.json" | sed \
    -e "s/{token}"/"$1"/ \
  )"
  shift
}