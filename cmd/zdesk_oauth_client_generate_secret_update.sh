# https://developer.zendesk.com/rest_api/docs/core/oauth_clients#generate-secret
zdesk_oauth_client_generate_secret_update () {
  method=PUT
  url="$(echo "/api/v2/oauth/clients/{id}/generate_secret.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}