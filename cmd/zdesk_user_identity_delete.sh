# https://developer.zendesk.com/rest_api/docs/core/user_identities#delete-identity
zdesk_user_identity_delete () {
  method=DELETE
  url="$(echo "/api/v2/users/{user_id}/identities/{id}.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}