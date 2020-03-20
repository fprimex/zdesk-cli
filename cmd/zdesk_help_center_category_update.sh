# https://developer.zendesk.com/rest_api/docs/help_center/categories#update-category
zdesk_help_center_category_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/categories/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/categories/{id}.json" | sed \ 
    -e "{id}" "$1" \ 
     )"
  shift
  fi
}