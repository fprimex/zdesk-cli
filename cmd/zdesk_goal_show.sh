# https://developer.zendesk.com/rest_api/docs/chat/goals#get-goal
zdesk_goal_show () {
  method=GET
  url="$(echo "/api/v2/goals/{goal_id}" | sed \
    -e "s/{goal_id}"/"$1"/ \
  )"
  shift
}