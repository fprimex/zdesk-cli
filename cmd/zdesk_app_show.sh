# https://developer.zendesk.com/rest_api/docs/core/apps#get-information-about-app
zdesk_app_show () {
  method=GET
  url="$(echo "/api/v2/apps/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}