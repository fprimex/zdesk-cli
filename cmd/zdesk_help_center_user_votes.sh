# https://developer.zendesk.com/rest_api/docs/help_center/votes#list-votes
zdesk_help_center_user_votes () {
  method=GET
  url="$(echo "/api/v2/help_center/users/{user_id}/votes.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}