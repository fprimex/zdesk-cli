# https://developer.zendesk.com/rest_api/docs/core/ticket_skips#list-skips-for-the-current-account
zdesk_skips_list () {
  method=GET
  url=/api/v2/skips.json
}