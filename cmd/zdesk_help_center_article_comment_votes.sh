# https://developer.zendesk.com/rest_api/docs/help_center/votes#list-votes
zdesk_help_center_article_comment_votes () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/comments/{comment_id}/votes.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{comment_id}"/"$1"/ \
  )"
  shift
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{article_id}/comments/{comment_id}/votes.json" | sed \ 
    -e "{article_id}" "$1" \ 
    -e "{comment_id}" "$1" \ 
     )"
  shift
  shift
  fi
}