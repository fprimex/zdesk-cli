# https://developer.zendesk.com/rest_api/docs/help_center/topics#update-topic
zdesk_community_topic_update () {
  method=PUT
  url="$(echo "/api/v2/community/topics/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}