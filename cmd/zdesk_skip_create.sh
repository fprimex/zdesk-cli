# https://developer.zendesk.com/rest_api/docs/core/ticket_skips#record-a-new-skip-for-the-current-user
zdesk_skip_create () {
  method=POST
  url=/api/v2/skips.json
}