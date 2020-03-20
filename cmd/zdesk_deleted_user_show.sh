# https://developer.zendesk.com/rest_api/docs/core/users#show-deleted-user
zdesk_deleted_user_show () {
  method=GET
  url="$(echo "/api/v2/deleted_users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}