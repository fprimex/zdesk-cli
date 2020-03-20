# https://developer.zendesk.com/rest_api/docs/help_center/articles#list-articles
zdesk_help_center_incremental_articles_list () {
  method=GET
  url=/api/v2/help_center/incremental/articles.json
  [ -n "$1" ] && query="$query&start_time=$1"
  shift
}