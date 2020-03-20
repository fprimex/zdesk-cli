# https://developer.zendesk.com/rest_api/docs/core/schedules#create-a-holiday
zdesk_business_hours_schedule_holiday_create () {
  method=POST
  url="$(echo "/api/v2/business_hours/schedules/{id}/holidays.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}