# https://developer.zendesk.com/rest_api/docs/core/user_identities#request-user-verification
zdesk_user_identity_request_verification_update () {
  method=PUT
  url="$(echo "/api/v2/users/{user_id}/identities/{id}/request_verification.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}