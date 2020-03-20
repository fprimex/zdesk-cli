# https://developer.zendesk.com/rest_api/docs/core/users#user-related-information
zdesk_user_related () {
  method=GET
  url="$(echo "/api/v2/users/{id}/related.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}