# https://developer.zendesk.com/rest_api/docs/core/global_clients#list-authorized-global-clients
zdesk_oauth_global_clients_list () {
  method=GET
  url=/api/v2/oauth/global_clients.json
}