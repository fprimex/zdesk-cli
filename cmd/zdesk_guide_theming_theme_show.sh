# https://developer.zendesk.com/rest_api/docs/help_center/theming#show-theme
zdesk_guide_theming_theme_show () {
  method=GET
  url="$(echo "/api/v2/guide/theming/themes/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}