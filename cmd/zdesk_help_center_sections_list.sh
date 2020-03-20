# https://developer.zendesk.com/rest_api/docs/help_center/sections#list-sections
zdesk_help_center_sections_list () {
  method=GET
  url="$(echo "/api/v2/help_center/sections.json" | sed \
  )"
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/sections.json" | sed \ 
     )"
  fi
}