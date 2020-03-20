# https://developer.zendesk.com/rest_api/docs/core/user_identities#verify-identity
zdesk_user_identity_verify () {
  method=PUT
  url="$(echo "/api/v2/users/{user_id}/identities/{id}/verify" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}