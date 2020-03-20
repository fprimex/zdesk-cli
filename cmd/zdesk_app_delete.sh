# https://developer.zendesk.com/rest_api/docs/core/apps#delete-app
zdesk_app_delete () {
  method=DELETE
  url="$(echo "/api/v2/apps/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}