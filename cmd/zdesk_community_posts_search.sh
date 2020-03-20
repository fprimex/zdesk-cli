# https://developer.zendesk.com/rest_api/docs/help_center/search#filtering-by-date
zdesk_community_posts_search () {
  method=GET
  url=/api/v2/community/posts/search.json
  [ -n "$1" ] && query="$query&query=$1"
  shift
  [ -n "$1" ] && query="$query&topic=$1"
  shift
  [ -n "$1" ] && query="$query&updated_after=$1"
  shift
  [ -n "$1" ] && query="$query&updated_before=$1"
  shift
}