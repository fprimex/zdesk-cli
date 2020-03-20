# https://developer.zendesk.com/rest_api/docs/help_center/posts#list-posts
zdesk_community_posts_list () {
  method=GET
  url=/api/v2/community/posts.json
  [ -n "$1" ] && query="$query&filter_by=$1"
  shift
}