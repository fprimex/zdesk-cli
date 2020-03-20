# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#update-topic-subscription
zdesk_community_topic_subscriptions_update () {
  method=PUT
  url="$(echo "/api/v2/community/topics/{topic_id}/subscriptions.json" | sed \
    -e "s/{topic_id}"/"$1"/ \
  )"
  shift
}