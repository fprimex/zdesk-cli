# https://developer.zendesk.com/rest_api/docs/help_center/votes#delete-vote
zdesk_help_center_vote_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/votes/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}