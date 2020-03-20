# https://developer.zendesk.com/rest_api/docs/chat/roles#get-role
zdesk_role_show () {
  method=GET
  url="$(echo "/api/v2/roles/{role_id}" | sed \
    -e "s/{role_id}"/"$1"/ \
  )"
  shift
}