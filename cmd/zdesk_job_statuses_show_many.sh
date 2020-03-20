# https://developer.zendesk.com/rest_api/docs/core/job_statuses#show-many-job-statuses
zdesk_job_statuses_show_many () {
  method=GET
  url=/api/v2/job_statuses/show_many.json
  [ -n "$1" ] && query="$query&ids=$1"
  shift
}