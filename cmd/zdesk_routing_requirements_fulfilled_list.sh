# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-tickets-fulfilled-by-a-user
zdesk_routing_requirements_fulfilled_list () {
  method=GET
  url=/api/v2/routing/requirements/fulfilled.json
}