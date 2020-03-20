# https://developer.zendesk.com/rest_api/docs/core/attachments#upload-files
zdesk_upload_create () {
  method=POST
  url=/api/v2/uploads.json
  [ -n "$1" ] && query="$query&filename=$1"
  shift
  [ -n "$1" ] && query="$query&token=$1"
  shift
}