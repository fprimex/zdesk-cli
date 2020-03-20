# https://developer.zendesk.com/rest_api/docs/core/oauth_tokens#revoke-token
zdesk_oauth_tokens_current_delete () {
  method=DELETE
  url=/api/v2/oauth/tokens/current.json
}