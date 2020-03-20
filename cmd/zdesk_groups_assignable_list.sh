# https://developer.zendesk.com/rest_api/docs/core/groups#show-assignable-groups
zdesk_groups_assignable_list () {
  method=GET
  url=/api/v2/groups/assignable.json
}