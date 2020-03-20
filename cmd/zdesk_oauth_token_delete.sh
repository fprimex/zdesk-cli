# https://developer.zendesk.com/rest_api/docs/chat/oauth_tokens#revoke-token
zdesk_oauth_token_delete () {
  method=DELETE
  url="$(echo "/api/v2/oauth/tokens/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}