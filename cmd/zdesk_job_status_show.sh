# https://developer.zendesk.com/rest_api/docs/core/job_statuses#show-job-status
zdesk_job_status_show () {
  method=GET
  url="$(echo "/api/v2/job_statuses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}