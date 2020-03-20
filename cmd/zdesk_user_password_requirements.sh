# https://developer.zendesk.com/rest_api/docs/core/user_passwords#get-a-list-of-password-requirements
zdesk_user_password_requirements () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/password/requirements.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}