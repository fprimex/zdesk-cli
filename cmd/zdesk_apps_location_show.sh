# https://developer.zendesk.com/rest_api/docs/core/app_locations#show-location
zdesk_apps_location_show () {
  method=GET
  url="$(echo "/api/v2/apps/locations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}