# https://developer.zendesk.com/rest_api/docs/core/organization_subscriptions#show-organization-subscription
zdesk_organization_subscription_show () {
  method=GET
  url="$(echo "/api/v2/organization_subscriptions/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}