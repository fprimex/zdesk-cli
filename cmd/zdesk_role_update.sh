# https://developer.zendesk.com/rest_api/docs/chat/roles#update-role
zdesk_role_update () {
  method=PUT
  url="$(echo "/api/v2/roles/{role_id}" | sed \
    -e "s/{role_id}"/"$1"/ \
  )"
  shift
}