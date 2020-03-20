# https://developer.zendesk.com/rest_api/docs/core/sharing_agreements#show-a-sharing-agreement
zdesk_sharing_agreement_show () {
  method=GET
  url="$(echo "/api/v2/sharing_agreements/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}