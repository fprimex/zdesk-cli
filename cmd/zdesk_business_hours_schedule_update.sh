# https://developer.zendesk.com/rest_api/docs/core/schedules#update-a-schedule
zdesk_business_hours_schedule_update () {
  method=PUT
  url="$(echo "/api/v2/business_hours/schedules/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}