# https://developer.zendesk.com/rest_api/docs/core/requests#listing-comments
zdesk_request_comments () {
  method=GET
  url="$(echo "/api/v2/requests/{id}/comments.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}