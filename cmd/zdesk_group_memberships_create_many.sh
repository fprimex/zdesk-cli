# https://developer.zendesk.com/rest_api/docs/core/group_memberships#bulk-create-memberships
zdesk_group_memberships_create_many () {
  method=POST
  url=/api/v2/group_memberships/create_many.json
}