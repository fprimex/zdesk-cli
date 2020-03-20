# https://developer.zendesk.com/rest_api/docs/core/triggers#delete-trigger
zdesk_trigger_delete_by_id () {
  method=DELETE
  url="$(echo "/api/v2/triggers/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}