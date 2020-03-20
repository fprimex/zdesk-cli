# https://developer.zendesk.com/rest_api/docs/chat/triggers#get-a-trigger
zdesk_trigger_show_by_trigger_name () {
  method=GET
  url="$(echo "/api/v2/triggers/{trigger_name}" | sed \
    -e "s/{trigger_name}"/"$1"/ \
  )"
  shift
}