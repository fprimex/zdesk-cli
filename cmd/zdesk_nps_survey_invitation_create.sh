# https://developer.zendesk.com/rest_api/docs/nps-api/invitations#create-invitation
zdesk_nps_survey_invitation_create () {
  method=POST
  url="$(echo "/api/v2/nps/surveys/{id}/invitations.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}