# https://developer.zendesk.com/rest_api/docs/help_center/search#search-posts
zdesk_help_center_community_posts_search () {
  method=GET
  url=/api/v2/help_center/community_posts/search.json
  [ -n "$1" ] && query="$query&query=$1"
  shift
}