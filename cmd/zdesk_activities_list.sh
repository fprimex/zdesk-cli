# https://developer.zendesk.com/rest_api/docs/core/activity_stream#list-activities
zdesk_activities_list () {
  method=GET
  url=/api/v2/activities.json
  [ -n "$1" ] && query="$query&since=$1"
  shift
}