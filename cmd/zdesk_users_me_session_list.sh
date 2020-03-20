# https://developer.zendesk.com/rest_api/docs/core/sessions#show-the-currently-authenticated-session
zdesk_users_me_session_list () {
  method=GET
  url=/api/v2/users/me/session.json
}