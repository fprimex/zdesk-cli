# https://developer.zendesk.com/rest_api/docs/chat/triggers#delete-trigger
zdesk_trigger_delete_by_trigger_name () {
  method=DELETE
  url="$(echo "/api/v2/triggers/{trigger_name}" | sed \
    -e "s/{trigger_name}"/"$1"/ \
  )"
  shift
}