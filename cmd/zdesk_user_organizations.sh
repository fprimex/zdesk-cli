# https://developer.zendesk.com/rest_api/docs/core/organizations#list-organizations
zdesk_user_organizations () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/organizations.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}