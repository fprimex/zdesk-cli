# https://developer.zendesk.com/rest_api/docs/core/user_passwords#change-your-password
zdesk_user_password_update () {
  method=PUT
  url="$(echo "/api/v2/users/{user_id}/password.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}