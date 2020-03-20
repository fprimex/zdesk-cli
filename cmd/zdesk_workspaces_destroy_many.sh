# https://developer.zendesk.com/rest_api/docs/core/workspaces#bulk-delete-workspaces
zdesk_workspaces_destroy_many () {
  method=DELETE
  url=/api/v2/workspaces/destroy_many.json
}