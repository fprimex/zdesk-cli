# https://developer.zendesk.com/rest_api/docs/chat/departments#delete-department-by-name
zdesk_departments_name_delete () {
  method=DELETE
  url="$(echo "/api/v2/departments/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}