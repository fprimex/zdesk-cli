# https://developer.zendesk.com/rest_api/docs/nps-api/responses#list-responses
zdesk_nps_survey_responses () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{survey_id}/responses.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
}