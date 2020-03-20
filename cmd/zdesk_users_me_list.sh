# https://developer.zendesk.com/rest_api/docs/core/users#show-the-current-user
zdesk_users_me_list () {
  method=GET
  url=/api/v2/users/me.json
}