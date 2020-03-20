# https://developer.zendesk.com/rest_api/docs/chat/oauth_tokens#list-tokens
zdesk_oauth_tokens_list () {
  method=GET
  url=/api/v2/oauth/tokens
}