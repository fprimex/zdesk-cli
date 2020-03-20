# https://developer.zendesk.com/rest_api/docs/nps-api/responses#create-response
zdesk_nps_survey_response_create () {
  method=POST
  url="$(echo "/api/v2/nps/surveys/{survey_id}/responses.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
}