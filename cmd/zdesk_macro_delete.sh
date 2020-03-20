# https://developer.zendesk.com/rest_api/docs/core/macros#delete-macro
zdesk_macro_delete () {
  method=DELETE
  url="$(echo "/api/v2/macros/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}