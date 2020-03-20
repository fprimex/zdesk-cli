# https://developer.zendesk.com/rest_api/docs/chat/triggers#update-trigger
zdesk_trigger_update_by_trigger_name () {
  method=PUT
  url="$(echo "/api/v2/triggers/{trigger_name}" | sed \
    -e "s/{trigger_name}"/"$1"/ \
  )"
  shift
}