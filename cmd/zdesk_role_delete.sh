# https://developer.zendesk.com/rest_api/docs/chat/roles#delete-role
zdesk_role_delete () {
  method=DELETE
  url="$(echo "/api/v2/roles/{role_id}" | sed \
    -e "s/{role_id}"/"$1"/ \
  )"
  shift
}