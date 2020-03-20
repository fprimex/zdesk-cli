# https://developer.zendesk.com/rest_api/docs/help_center/topics#show-topic
zdesk_community_topic_show () {
  method=GET
  url="$(echo "/api/v2/community/topics/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}