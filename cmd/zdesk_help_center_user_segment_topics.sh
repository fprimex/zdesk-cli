# https://developer.zendesk.com/rest_api/docs/help_center/user_segments#list-topics-using-a-user-segment
zdesk_help_center_user_segment_topics () {
  method=GET
  url="$(echo "/api/v2/help_center/user_segments/{user_segment_id}/topics.json" | sed \
    -e "s/{user_segment_id}"/"$1"/ \
  )"
  shift
}