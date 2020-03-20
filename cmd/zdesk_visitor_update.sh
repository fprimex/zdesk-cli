# https://developer.zendesk.com/rest_api/docs/chat/visitors#update-visitor
zdesk_visitor_update () {
  method=PUT
  url="$(echo "/api/v2/visitors/{visitor_id}" | sed \
    -e "s/{visitor_id}"/"$1"/ \
  )"
  shift
}