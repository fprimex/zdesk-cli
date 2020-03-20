# https://developer.zendesk.com/rest_api/docs/core/locales#detect-best-language-for-user
zdesk_locales_detect_best_locale () {
  method=GET
  url=/api/v2/locales/detect_best_locale.json
}