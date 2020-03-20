# https://developer.zendesk.com/rest_api/docs/core/app_location_installations#reorder-app-installations-for-location
zdesk_apps_location_installations_reorder () {
  method=POST
  url=/api/v2/apps/location_installations/reorder.json
}