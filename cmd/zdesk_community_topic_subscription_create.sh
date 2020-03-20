# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#create-topic-subscription
zdesk_community_topic_subscription_create () {
  method=POST
  url="$(echo "/api/v2/community/topics/{topic_id}/subscriptions.json" | sed \
    -e "s/{topic_id}"/"$1"/ \
  )"
  shift
}