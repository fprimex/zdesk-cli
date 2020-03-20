# https://developer.zendesk.com/rest_api/docs/core/workspaces#update-workspace
zdesk_workspace_update () {
  method=PUT
  url="$(echo "/api/v2/workspaces/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}