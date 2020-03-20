# https://developer.zendesk.com/rest_api/docs/help_center/permission_groups#delete-permission-group
zdesk_guide_permission_group_delete () {
  method=DELETE
  url="$(echo "/api/v2/guide/permission_groups/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}