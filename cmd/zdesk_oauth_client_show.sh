# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#show-client
zdesk_oauth_client_show () {
  method=GET
  url="$(echo "/api/v2/oauth/clients/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}