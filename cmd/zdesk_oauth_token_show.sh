# https://developer.zendesk.com/rest_api/docs/core/oauth_tokens#show-token
zdesk_oauth_token_show () {
  method=GET
  url="$(echo "/api/v2/oauth/tokens/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}