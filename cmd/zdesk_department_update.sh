# https://developer.zendesk.com/rest_api/docs/chat/departments#update-department-by-id
zdesk_department_update () {
  method=PUT
  url="$(echo "/api/v2/departments/{department_id}" | sed \
    -e "s/{department_id}"/"$1"/ \
  )"
  shift
}