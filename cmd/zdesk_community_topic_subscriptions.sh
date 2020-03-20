# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#list-topic-subscriptions
zdesk_community_topic_subscriptions () {
  method=GET
  url="$(echo "/api/v2/community/topics/{topic_id}/subscriptions.json" | sed \
    -e "s/{topic_id}"/"$1"/ \
  )"
  shift
}