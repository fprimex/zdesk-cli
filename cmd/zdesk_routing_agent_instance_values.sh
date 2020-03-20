# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#list-agent-attribute-values
zdesk_routing_agent_instance_values () {
  method=GET
  url="$(echo "/api/v2/routing/agents/{agent_id}/instance_values.json" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}