# https://developer.zendesk.com/rest_api/docs/core/custom_roles#show-custom-role
zdesk_custom_role_show () {
  method=GET
  url="$(echo "/api/v2/custom_roles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}