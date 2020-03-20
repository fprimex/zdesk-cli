# https://developer.zendesk.com/rest_api/docs/core/triggers#getting-triggers
zdesk_trigger_show_by_id () {
  method=GET
  url="$(echo "/api/v2/triggers/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}