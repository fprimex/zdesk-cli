# https://developer.zendesk.com/rest_api/docs/core/user_identities#create-identity
zdesk_user_identity_create () {
  method=POST
  url="$(echo "/api/v2/users/{user_id}/identities.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}