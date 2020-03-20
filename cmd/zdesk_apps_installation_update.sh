# https://developer.zendesk.com/rest_api/docs/core/apps#update-app-installation
zdesk_apps_installation_update () {
  method=PUT
  url="$(echo "/api/v2/apps/installations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}