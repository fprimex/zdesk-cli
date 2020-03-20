# https://developer.zendesk.com/rest_api/docs/core/custom_roles#update-custom-role
zdesk_custom_role_update () {
  method=PUT
  url="$(echo "/api/v2/custom_roles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}