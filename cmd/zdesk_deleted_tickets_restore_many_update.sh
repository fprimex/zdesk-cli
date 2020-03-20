# https://developer.zendesk.com/rest_api/docs/core/tickets#restore-previously-deleted-tickets-in-bulk
zdesk_deleted_tickets_restore_many_update () {
  method=PUT
  url=/api/v2/deleted_tickets/restore_many
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}