# https://developer.zendesk.com/rest_api/docs/help_center/categories#delete-category
zdesk_help_center_category_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/categories/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}