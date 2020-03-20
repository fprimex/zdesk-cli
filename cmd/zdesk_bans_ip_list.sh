# https://developer.zendesk.com/rest_api/docs/chat/bans#get-banned-ip-addresses
zdesk_bans_ip_list () {
  method=GET
  url=/api/v2/bans/ip
}