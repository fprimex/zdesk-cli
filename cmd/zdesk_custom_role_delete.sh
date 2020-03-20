# https://developer.zendesk.com/rest_api/docs/core/custom_roles#delete-custom-role
zdesk_custom_role_delete () {
  method=DELETE
  url="$(echo "/api/v2/custom_roles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}