# https://developer.zendesk.com/rest_api/docs/help_center/categories#update-category-source-locale
zdesk_help_center_category_source_locale_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/categories/{id}/source_locale.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}