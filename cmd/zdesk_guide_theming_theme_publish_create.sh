# https://developer.zendesk.com/rest_api/docs/help_center/theming#publish-theme
zdesk_guide_theming_theme_publish_create () {
  method=POST
  url="$(echo "/api/v2/guide/theming/themes/{id}/publish" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}