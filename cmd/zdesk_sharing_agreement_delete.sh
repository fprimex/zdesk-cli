# https://developer.zendesk.com/rest_api/docs/core/sharing_agreements#delete-a-sharing-agreement
zdesk_sharing_agreement_delete () {
  method=DELETE
  url="$(echo "/api/v2/sharing_agreements/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}