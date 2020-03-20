# https://developer.zendesk.com/rest_api/docs/help_center/theming#list-themes
zdesk_guide_theming_themes_list () {
  method=GET
  url=/api/v2/guide/theming/themes
  [ -n "$1" ] && query="$query&brand_id=$1"
  shift
}