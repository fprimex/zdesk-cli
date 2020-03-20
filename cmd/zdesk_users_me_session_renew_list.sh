# https://developer.zendesk.com/rest_api/docs/core/sessions#renew-the-current-session
zdesk_users_me_session_renew_list () {
  method=GET
  url=/api/v2/users/me/session/renew
}