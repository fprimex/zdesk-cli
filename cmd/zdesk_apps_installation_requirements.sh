# https://developer.zendesk.com/rest_api/docs/core/apps#list-requirements
zdesk_apps_installation_requirements () {
  method=GET
  url="$(echo "/api/v2/apps/installations/{id}/requirements.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}