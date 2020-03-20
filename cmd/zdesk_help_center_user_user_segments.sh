# https://developer.zendesk.com/rest_api/docs/help_center/user_segments#list-user-segments
zdesk_help_center_user_user_segments () {
  method=GET
  url="$(echo "/api/v2/help_center/users/{user_id}/user_segments.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}