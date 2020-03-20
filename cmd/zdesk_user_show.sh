# https://developer.zendesk.com/rest_api/docs/core/users#show-user
zdesk_user_show () {
  method=GET
  url="$(echo "/api/v2/users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}