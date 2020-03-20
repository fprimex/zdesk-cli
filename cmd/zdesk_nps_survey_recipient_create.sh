# https://developer.zendesk.com/rest_api/docs/nps-api/recipients#create-recipient
zdesk_nps_survey_recipient_create () {
  method=POST
  url="$(echo "/api/v2/nps/surveys/{survey_id}/recipients.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
}