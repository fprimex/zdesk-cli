# https://developer.zendesk.com/rest_api/docs/core/organization_subscriptions#list-organization-subscriptions
zdesk_user_organization_subscriptions () {
  method=GET
  url="$(echo "/api/v2/users/{user_id}/organization_subscriptions.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}