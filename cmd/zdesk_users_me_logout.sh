# https://developer.zendesk.com/rest_api/docs/core/sessions#delete-the-authenticated-session
zdesk_users_me_logout () {
  method=DELETE
  url=/api/v2/users/me/logout.json
}