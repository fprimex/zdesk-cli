# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#delete-topic-subscription
zdesk_community_topic_subscription_delete () {
  method=DELETE
  url="$(echo "/api/v2/community/topics/{topic_id}/subscriptions/{id}.json" | sed \
    -e "s/{topic_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}