# https://developer.zendesk.com/rest_api/docs/chat/departments#get-department-by-name
zdesk_departments_name_show () {
  method=GET
  url="$(echo "/api/v2/departments/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}