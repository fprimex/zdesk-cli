# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#show-section-subscription
zdesk_help_center_section_subscription_show () {
  method=GET
  url="$(echo "/api/v2/help_center/sections/{section_id}/subscriptions/{id}.json" | sed \
    -e "s/{section_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/sections/{section_id}/subscriptions/{id}.json" | sed \ 
    -e "{section_id}" "$1" \ 
    -e "{id}" "$1" \ 
     )"
  shift
  shift
  fi
}