# https://developer.zendesk.com/rest_api/docs/core/job_statuses#list-job-statuses
zdesk_job_statuses_list () {
  method=GET
  url=/api/v2/job_statuses.json
}