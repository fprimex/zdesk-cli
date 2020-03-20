# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#create-section-subscription
zdesk_help_center_section_subscription_create () {
  method=POST
  url="$(echo "/api/v2/help_center/sections/{section_id}/subscriptions.json" | sed \
    -e "s/{section_id}"/"$1"/ \
  )"
  shift
}