# https://developer.zendesk.com/rest_api/docs/core/apps#list-owned-apps
zdesk_apps_owned_list () {
  method=GET
  url=/api/v2/apps/owned.json
}