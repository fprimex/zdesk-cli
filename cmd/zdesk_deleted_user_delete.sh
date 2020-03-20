# https://developer.zendesk.com/rest_api/docs/core/users#permanently-delete-user
zdesk_deleted_user_delete () {
  method=DELETE
  url="$(echo "/api/v2/deleted_users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}