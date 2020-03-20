# https://developer.zendesk.com/rest_api/docs/core/organization_memberships#set-membership-as-default
zdesk_user_organization_membership_make_default () {
  method=PUT
  url="$(echo "/api/v2/users/{id}/organization_memberships/{membership_id}/make_default.json" | sed \
    -e "s/{id}"/"$1"/ \
    -e "s/{membership_id}"/"$1"/ \
  )"
  shift
  shift
}