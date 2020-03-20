# https://developer.zendesk.com/rest_api/docs/core/macros#show-macro-replica
zdesk_macros_new_list () {
  method=GET
  url=/api/v2/macros/new.json
}