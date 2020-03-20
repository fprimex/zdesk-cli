# https://developer.zendesk.com/rest_api/docs/core/schedules#update-intervals-for-a-schedule
zdesk_business_hours_schedule_workweek_update () {
  method=PUT
  url="$(echo "/api/v2/business_hours/schedules/{id}/workweek.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}