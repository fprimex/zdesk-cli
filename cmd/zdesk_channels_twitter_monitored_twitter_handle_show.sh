# https://developer.zendesk.com/rest_api/docs/core/twitter_channel#getting-monitored-twitter-handle
zdesk_channels_twitter_monitored_twitter_handle_show () {
  method=GET
  url="$(echo "/api/v2/channels/twitter/monitored_twitter_handles/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}