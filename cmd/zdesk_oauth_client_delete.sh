# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#delete-client
zdesk_oauth_client_delete () {
  method=DELETE
  url="$(echo "/api/v2/oauth/clients/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}