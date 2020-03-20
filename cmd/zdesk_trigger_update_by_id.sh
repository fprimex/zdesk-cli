# https://developer.zendesk.com/rest_api/docs/core/triggers#update-trigger
zdesk_trigger_update_by_id () {
  method=PUT
  url="$(echo "/api/v2/triggers/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}