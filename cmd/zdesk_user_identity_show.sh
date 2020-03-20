# https://developer.zendesk.com/rest_api/docs/core/user_identities#show-identity
zdesk_user_identity_show () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/identities/{id}.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}