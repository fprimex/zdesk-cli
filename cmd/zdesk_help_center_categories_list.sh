# https://developer.zendesk.com/rest_api/docs/help_center/categories#list-categories
zdesk_help_center_categories_list () {
  method=GET
  url="$(echo "/api/v2/help_center/categories.json" | sed \
  )"
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/categories.json" | sed \ 
     )"
  fi
}