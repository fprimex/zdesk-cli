# https://developer.zendesk.com/rest_api/docs/core/activity_stream#show-activity
zdesk_activity_show () {
  method=GET
  url="$(echo "/api/v2/activities/{activity_id}.json" | sed \
    -e "s/{activity_id}"/"$1"/ \
  )"
  shift
}