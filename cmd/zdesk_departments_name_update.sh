# https://developer.zendesk.com/rest_api/docs/chat/departments#update-department-by-name
zdesk_departments_name_update () {
  method=PUT
  url="$(echo "/api/v2/departments/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}