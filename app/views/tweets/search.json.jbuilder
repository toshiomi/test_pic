json.array! @tweets do |tweet|
  json.id tweet.id
  json.name tweet.name
  json.text tweet.text
  json.image tweet.image
  json.user_id tweet.user_id
  json.user_name tweet.user.name
  json.h tweet.h
  json.a tweet.a
  json.b tweet.b
  json.c tweet.c
  json.d tweet.d
  json.s tweet.s
  json.personality tweet.personality.name
  json.current_user_id current_user.id
  json.like_counts tweet.likes.count
end
