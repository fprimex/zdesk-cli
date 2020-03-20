# https://developer.zendesk.com/rest_api/docs/core/triggers#getting-revisions
zdesk_trigger_revision_show () {
  method=GET
  url="$(echo "/api/v2/triggers/{trigger_id}/revisions/{revision_id}.json" | sed \
    -e "s/{trigger_id}"/"$1"/ \
    -e "s/{revision_id}"/"$1"/ \
  )"
  shift
  shift
}