# https://developer.zendesk.com/rest_api/docs/core/views#list-active-views
zdesk_views_active_list () {
  method=GET
  url=/api/v2/views/active.json
}