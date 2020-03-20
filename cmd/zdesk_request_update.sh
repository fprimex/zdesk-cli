# https://developer.zendesk.com/rest_api/docs/core/requests#update-request
zdesk_request_update () {
  method=PUT
  url="$(echo "/api/v2/requests/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}