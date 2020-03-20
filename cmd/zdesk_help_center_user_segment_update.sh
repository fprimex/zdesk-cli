# https://developer.zendesk.com/rest_api/docs/help_center/user_segments#update-user-segment
zdesk_help_center_user_segment_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/user_segments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}