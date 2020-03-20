# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#list-section-subscriptions
zdesk_help_center_section_subscriptions () {
  method=GET
  url="$(echo "/api/v2/help_center/sections/{section_id}/subscriptions.json" | sed \
    -e "s/{section_id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/sections/{section_id}/subscriptions.json" | sed \ 
    -e "{section_id}" "$1" \ 
     )"
  shift
  fi
}