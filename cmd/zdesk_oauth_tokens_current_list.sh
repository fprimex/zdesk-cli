# https://developer.zendesk.com/rest_api/docs/core/oauth_tokens#show-token
zdesk_oauth_tokens_current_list () {
  method=GET
  url=/api/v2/oauth/tokens/current.json
}