# https://developer.zendesk.com/rest_api/docs/core/twitter_channel#getting-twicket-status
zdesk_channels_twitter_ticket_statuses () {
  method=GET
  url="$(echo "/api/v2/channels/twitter/tickets/{id}/statuses.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}