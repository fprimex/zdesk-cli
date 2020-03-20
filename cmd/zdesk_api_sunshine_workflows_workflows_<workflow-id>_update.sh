# https://developer.zendesk.com/rest_api/docs/core/sunshine_workflows#update-workflow-definition
zdesk_api_sunshine_workflows_workflows_<workflow-id>_update () {
  method=PUT
  url=/api/sunshine_workflows/workflows/<workflow-id>
}