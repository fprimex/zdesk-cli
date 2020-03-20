# https://developer.zendesk.com/rest_api/docs/core/requests#list-requests
zdesk_requests_open_list () {
  method=GET
  url=/api/v2/requests/open.json
}