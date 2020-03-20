# https://developer.zendesk.com/rest_api/docs/core/requests#getting-comments
zdesk_request_comment_show () {
  method=GET
  url="$(echo "/api/v2/requests/{request_id}/comments/{id}.json" | sed \
    -e "s/{request_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}