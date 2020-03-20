# https://developer.zendesk.com/rest_api/docs/core/bookmarks#delete-bookmark
zdesk_bookmark_delete () {
  method=DELETE
  url="$(echo "/api/v2/bookmarks/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}