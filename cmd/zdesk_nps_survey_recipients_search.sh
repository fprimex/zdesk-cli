# https://developer.zendesk.com/rest_api/docs/nps-api/recipients#search-recipients
zdesk_nps_survey_recipients_search () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{survey_id}/recipients/search.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&email=$1"
  shift
}