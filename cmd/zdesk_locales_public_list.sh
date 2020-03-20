# https://developer.zendesk.com/rest_api/docs/core/locales#list-available-public-locales
zdesk_locales_public_list () {
  method=GET
  url=/api/v2/locales/public.json
}