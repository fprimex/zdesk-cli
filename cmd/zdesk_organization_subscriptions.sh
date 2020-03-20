# https://developer.zendesk.com/rest_api/docs/core/organization_subscriptions#list-organization-subscriptions
zdesk_organization_subscriptions () {
  method=GET
  url="$(echo "/api/v2/organizations/{organization_id}/subscriptions.json" | sed \
    -e "s/{organization_id}"/"$1"/ \
  )"
  shift
}