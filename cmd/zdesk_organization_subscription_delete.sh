# https://developer.zendesk.com/rest_api/docs/core/organization_subscriptions#delete-organization-subscription
zdesk_organization_subscription_delete () {
  method=DELETE
  url="$(echo "/api/v2/organization_subscriptions/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}