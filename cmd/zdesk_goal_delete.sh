# https://developer.zendesk.com/rest_api/docs/chat/goals#delete-goal
zdesk_goal_delete () {
  method=DELETE
  url="$(echo "/api/v2/goals/{goal_id}" | sed \
    -e "s/{goal_id}"/"$1"/ \
  )"
  shift
}