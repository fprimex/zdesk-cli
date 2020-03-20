# https://developer.zendesk.com/rest_api/docs/help_center/theming#show-job
zdesk_guide_theming_job_show () {
  method=GET
  url="$(echo "/api/v2/guide/theming/jobs/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}