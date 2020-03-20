# https://developer.zendesk.com/rest_api/docs/core/macros#show-changes-to-ticket
zdesk_macro_apply () {
  method=GET
  url="$(echo "/api/v2/macros/{id}/apply.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}