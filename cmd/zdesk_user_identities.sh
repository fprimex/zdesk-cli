# https://developer.zendesk.com/rest_api/docs/core/user_identities#list-identities
zdesk_user_identities () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/identities.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}