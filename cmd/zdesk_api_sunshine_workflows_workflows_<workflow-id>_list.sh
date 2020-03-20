# https://developer.zendesk.com/rest_api/docs/core/sunshine_workflows#get-workflow-definition-by-id
zdesk_api_sunshine_workflows_workflows_<workflow-id>_list () {
  method=GET
  url=/api/sunshine_workflows/workflows/<workflow-id>
}