# https://developer.zendesk.com/rest_api/docs/core/users#list-deleted-users
zdesk_deleted_users_list () {
  method=GET
  url=/api/v2/deleted_users.json
}