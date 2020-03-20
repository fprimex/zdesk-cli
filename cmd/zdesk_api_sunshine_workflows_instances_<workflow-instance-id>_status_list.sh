# https://developer.zendesk.com/rest_api/docs/core/sunshine_workflows#get-the-status-of-running-workflow
zdesk_api_sunshine_workflows_instances_<workflow-instance-id>_status_list () {
  method=GET
  url=/api/sunshine_workflows/instances/<workflow-instance-id>/status
}