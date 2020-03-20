# https://developer.zendesk.com/rest_api/docs/core/locales#list-locales-for-agent
zdesk_locales_agent_list () {
  method=GET
  url=/api/v2/locales/agent.json
}