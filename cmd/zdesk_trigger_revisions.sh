# https://developer.zendesk.com/rest_api/docs/core/triggers#list-trigger-revisions
zdesk_trigger_revisions () {
  method=GET
  url="$(echo "/api/v2/triggers/{trigger_id}/revisions.json" | sed \
    -e "s/{trigger_id}"/"$1"/ \
  )"
  shift
}