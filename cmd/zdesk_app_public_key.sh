# https://developer.zendesk.com/rest_api/docs/core/apps#get-app-public-key
zdesk_app_public_key () {
  method=GET
  url="$(echo "/api/v2/apps/{id}/public_key.pem" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}