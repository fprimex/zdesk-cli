# https://developer.zendesk.com/rest_api/docs/core/apps#get-requirements-install-status
zdesk_apps_installations_job_status_show () {
  method=GET
  url="$(echo "/api/v2/apps/installations/job_statuses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}