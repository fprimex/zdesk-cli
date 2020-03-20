# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#list-subscriptions-by-user
zdesk_help_center_user_subscriptions () {
  method=GET
  url="$(echo "/api/v2/help_center/users/{user_id}/subscriptions.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}