# https://developer.zendesk.com/rest_api/docs/core/macros#show-macro
zdesk_macro_show () {
  method=GET
  url="$(echo "/api/v2/macros/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}