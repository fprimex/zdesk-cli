# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#list-clients
zdesk_oauth_clients_list () {
  method=GET
  url=/api/v2/oauth/clients.json
}