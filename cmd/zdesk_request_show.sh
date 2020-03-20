# https://developer.zendesk.com/rest_api/docs/core/requests#show-request
zdesk_request_show () {
  method=GET
  url="$(echo "/api/v2/requests/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}