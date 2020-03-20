# https://developer.zendesk.com/rest_api/docs/nps-api/responses#update-response
zdesk_nps_survey_response_update () {
  method=PUT
  url="$(echo "/api/v2/nps/surveys/{survey_id}/responses/{id}.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}