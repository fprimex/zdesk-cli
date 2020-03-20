# https://developer.zendesk.com/rest_api/docs/core/workspaces#delete-workspace
zdesk_workspace_delete () {
  method=DELETE
  url="$(echo "/api/v2/workspaces/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}