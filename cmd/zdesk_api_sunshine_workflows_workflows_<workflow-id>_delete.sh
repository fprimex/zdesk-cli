# https://developer.zendesk.com/rest_api/docs/core/sunshine_workflows#delete-workflow-definition
zdesk_api_sunshine_workflows_workflows_<workflow-id>_delete () {
  method=DELETE
  url=/api/sunshine_workflows/workflows/<workflow-id>
}