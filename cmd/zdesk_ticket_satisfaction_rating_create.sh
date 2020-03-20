# https://developer.zendesk.com/rest_api/docs/core/satisfaction_ratings#create-a-satisfaction-rating
zdesk_ticket_satisfaction_rating_create () {
  method=POST
  url="$(echo "/api/v2/tickets/{ticket_id}/satisfaction_rating.json" | sed \
    -e "s/{ticket_id}"/"$1"/ \
  )"
  shift
}