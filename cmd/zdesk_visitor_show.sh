# https://developer.zendesk.com/rest_api/docs/chat/visitors#get-a-visitor
zdesk_visitor_show () {
  method=GET
  url="$(echo "/api/v2/visitors/{visitor_id}" | sed \
    -e "s/{visitor_id}"/"$1"/ \
  )"
  shift
}