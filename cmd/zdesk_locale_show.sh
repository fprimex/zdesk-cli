# https://developer.zendesk.com/rest_api/docs/core/locales#show-locale
zdesk_locale_show () {
  method=GET
  url="$(echo "/api/v2/locales/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}