# https://developer.zendesk.com/rest_api/docs/core/end_user#show-user
zdesk_end_user_show () {
  method=GET
  url="$(echo "/api/v2/end_users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}