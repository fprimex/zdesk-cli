# https://developer.zendesk.com/rest_api/docs/help_center/user_segments#list-sections-using-a-user-segment
zdesk_help_center_user_segment_sections () {
  method=GET
  url="$(echo "/api/v2/help_center/user_segments/{user_segment_id}/sections.json" | sed \
    -e "s/{user_segment_id}"/"$1"/ \
  )"
  shift
}