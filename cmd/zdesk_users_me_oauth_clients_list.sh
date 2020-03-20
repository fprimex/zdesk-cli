# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#list-clients
zdesk_users_me_oauth_clients_list () {
  method=GET
  url=/api/v2/users/me/oauth/clients.json
}