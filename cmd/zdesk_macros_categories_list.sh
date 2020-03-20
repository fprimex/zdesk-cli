# https://developer.zendesk.com/rest_api/docs/core/macros#list-macro-categories
zdesk_macros_categories_list () {
  method=GET
  url=/api/v2/macros/categories.json
}