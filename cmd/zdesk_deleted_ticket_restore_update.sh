# https://developer.zendesk.com/rest_api/docs/core/tickets#restore-a-previously-deleted-ticket
zdesk_deleted_ticket_restore_update () {
  method=PUT
  url="$(echo "/api/v2/deleted_tickets/{id}/restore.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}