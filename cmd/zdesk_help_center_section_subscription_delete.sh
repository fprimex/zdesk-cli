# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#delete-section-subscription
zdesk_help_center_section_subscription_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/sections/{section_id}/subscriptions/{id}.json" | sed \
    -e "s/{section_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}