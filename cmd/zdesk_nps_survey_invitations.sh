# https://developer.zendesk.com/rest_api/docs/nps-api/invitations#list-invitations
zdesk_nps_survey_invitations () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{survey_id}/invitations.json" | sed \
    -e "s/{survey_id}"/"$1"/ \
  )"
  shift
}