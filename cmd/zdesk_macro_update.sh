# https://developer.zendesk.com/rest_api/docs/core/macros#update-macro
zdesk_macro_update () {
  method=PUT
  url="$(echo "/api/v2/macros/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}