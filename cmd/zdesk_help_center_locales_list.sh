# https://developer.zendesk.com/rest_api/docs/help_center/translations#list-all-enabled-locales-and-default-locale
zdesk_help_center_locales_list () {
  method=GET
  url=/api/v2/help_center/locales.json
}