# https://developer.zendesk.com/rest_api/docs/chat/goals#update-goal
zdesk_goal_update () {
  method=PUT
  url="$(echo "/api/v2/goals/{goal_id}" | sed \
    -e "s/{goal_id}"/"$1"/ \
  )"
  shift
}