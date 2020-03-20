# https://developer.zendesk.com/rest_api/docs/nps-api/surveys#show-survey
zdesk_nps_survey_show () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}