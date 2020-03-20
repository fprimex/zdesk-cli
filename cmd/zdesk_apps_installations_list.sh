# https://developer.zendesk.com/rest_api/docs/core/apps#list-app-installations
zdesk_apps_installations_list () {
  method=GET
  url=/api/v2/apps/installations.json
}