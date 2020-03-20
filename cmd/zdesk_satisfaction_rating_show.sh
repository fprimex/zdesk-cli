# https://developer.zendesk.com/rest_api/docs/core/satisfaction_ratings#show-satisfaction-rating
zdesk_satisfaction_rating_show () {
  method=GET
  url="$(echo "/api/v2/satisfaction_ratings/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}