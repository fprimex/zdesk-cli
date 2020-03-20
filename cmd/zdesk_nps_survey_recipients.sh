# https://developer.zendesk.com/rest_api/docs/nps-api/recipients#list-recipients
zdesk_nps_survey_recipients () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{survey_id}/recipients.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
}