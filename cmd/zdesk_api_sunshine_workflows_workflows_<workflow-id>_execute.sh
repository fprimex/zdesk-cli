# https://developer.zendesk.com/rest_api/docs/core/sunshine_workflows#execute-a-workflow
zdesk_api_sunshine_workflows_workflows_<workflow-id>_execute () {
  method=POST
  url=/api/sunshine_workflows/workflows/<workflow-id>/execute
}