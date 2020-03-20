# https://developer.zendesk.com/rest_api/docs/nps-api/invitations#show-invitation
zdesk_nps_survey_invitation_show () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{survey_id}/invitations/{id}.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}