# https://developer.zendesk.com/rest_api/docs/core/user_identities#make-identity-primary
zdesk_user_identity_make_primary () {
  method=PUT
  url="$(echo "/api/v2/users/{user_id}/identities/{id}/make_primary" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}