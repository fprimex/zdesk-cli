# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#update-client
zdesk_oauth_client_update () {
  method=PUT
  url="$(echo "/api/v2/oauth/clients/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}