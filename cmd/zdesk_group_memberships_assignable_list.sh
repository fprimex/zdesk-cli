# https://developer.zendesk.com/rest_api/docs/core/group_memberships#list-assignable-memberships
zdesk_group_memberships_assignable_list () {
  method=GET
  url=/api/v2/group_memberships/assignable.json
}