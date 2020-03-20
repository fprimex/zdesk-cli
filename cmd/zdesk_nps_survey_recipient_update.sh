# https://developer.zendesk.com/rest_api/docs/nps-api/recipients#update-recipient
zdesk_nps_survey_recipient_update () {
  method=PUT
  url="$(echo "/api/v2/nps/surveys/{survey_id}/recipients/{id}.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}