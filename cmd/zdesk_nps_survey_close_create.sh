# https://developer.zendesk.com/rest_api/docs/nps-api/surveys#close-survey
zdesk_nps_survey_close_create () {
  method=POST
  url="$(echo "/api/v2/nps/surveys/{id}/close" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}