# https://developer.zendesk.com/rest_api/docs/core/satisfaction_ratings#list-satisfaction-ratings
zdesk_satisfaction_ratings_list () {
  method=GET
  url=/api/v2/satisfaction_ratings.json
  [ -n "$1" ] && query="$query&score=$1"
  shift
}