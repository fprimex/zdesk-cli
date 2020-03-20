# https://developer.zendesk.com/rest_api/docs/help_center/sections#list-sections
zdesk_help_center_category_sections () {
  method=GET
  url="$(echo "/api/v2/help_center/categories/{id}/sections.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/categories/{id}/sections.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}