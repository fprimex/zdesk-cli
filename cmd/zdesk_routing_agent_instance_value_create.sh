# https://developer.zendesk.com/rest_api/docs/core/skill_based_routing#set-agent-attribute-values
zdesk_routing_agent_instance_value_create () {
  method=POST
  url="$(echo "/api/v2/routing/agents/{agent_id}/instance_values" | sed \
    -e "s/{agent_id}"/"$1"/ \
  )"
  shift
}