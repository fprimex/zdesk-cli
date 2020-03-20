# https://developer.zendesk.com/rest_api/docs/nps-api/surveys#preview-survey
zdesk_nps_survey_preview () {
  method=GET
  url="$(echo "/api/v2/nps/surveys/{id}/preview" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  [ -n "$1" ] && query="$query&locale=$1"
  shift
}