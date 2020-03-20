# https://developer.zendesk.com/rest_api/docs/core/locales#show-current-locale
zdesk_locales_current_list () {
  method=GET
  url=/api/v2/locales/current.json
}