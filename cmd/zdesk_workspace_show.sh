# https://developer.zendesk.com/rest_api/docs/core/workspaces#show-workspace
zdesk_workspace_show () {
  method=GET
  url="$(echo "/api/v2/workspaces/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}