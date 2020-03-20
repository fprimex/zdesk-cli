# https://developer.zendesk.com/rest_api/docs/core/users#merge-self-with-another-user
zdesk_users_me_merge () {
  method=PUT
  url=/api/v2/users/me/merge.json
}