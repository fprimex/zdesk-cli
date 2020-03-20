# https://developer.zendesk.com/rest_api/docs/core/apps#update-app
zdesk_app_update () {
  method=PUT
  url="$(echo "/api/v2/apps/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}