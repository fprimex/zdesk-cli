# https://developer.zendesk.com/rest_api/docs/help_center/sections#show-section
zdesk_help_center_section_show () {
  method=GET
  url="$(echo "/api/v2/help_center/sections/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/sections/{id}.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}