# https://developer.zendesk.com/rest_api/docs/core/schedules#delete-a-schedule
zdesk_business_hours_schedule_delete () {
  method=DELETE
  url="$(echo "/api/v2/business_hours/schedules/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}