# https://developer.zendesk.com/rest_api/docs/core/apps#show-app-installation
zdesk_apps_installation_show () {
  method=GET
  url="$(echo "/api/v2/apps/installations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}