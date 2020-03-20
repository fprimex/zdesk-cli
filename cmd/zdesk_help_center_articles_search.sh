# https://developer.zendesk.com/rest_api/docs/help_center/search#search-articles
zdesk_help_center_articles_search () {
  method=GET
  url=/api/v2/help_center/articles/search.json
  [ -n "$1" ] && query="$query&brand_id=$1"
  shift
  [ -n "$1" ] && query="$query&category=$1"
  shift
  [ -n "$1" ] && query="$query&label_names=$1"
  shift
  [ -n "$1" ] && query="$query&locale=$1"
  shift
  [ -n "$1" ] && query="$query&multibrand=$1"
  shift
  [ -n "$1" ] && query="$query&query=$1"
  shift
  [ -n "$1" ] && query="$query&section=$1"
  shift
  [ -n "$1" ] && query="$query&updated_after=$1"
  shift
  [ -n "$1" ] && query="$query&updated_before=$1"
  shift
}