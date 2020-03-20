# https://developer.zendesk.com/rest_api/docs/core/apps#remove-app-installation
zdesk_apps_installation_delete () {
  method=DELETE
  url="$(echo "/api/v2/apps/installations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}