# https://developer.zendesk.com/rest_api/docs/core/views#preview-count
zdesk_views_preview_count () {
  method=POST
  url=/api/v2/views/preview/count.json
}