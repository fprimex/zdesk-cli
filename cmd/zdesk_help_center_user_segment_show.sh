# https://developer.zendesk.com/rest_api/docs/help_center/user_segments#show-user-segment
zdesk_help_center_user_segment_show () {
  method=GET
  url="$(echo "/api/v2/help_center/user_segments/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}