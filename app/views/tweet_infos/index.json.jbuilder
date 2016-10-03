json.array!(@tweet_infos) do |tweet_info|
  json.extract! tweet_info, :id, :user, :tweet, :link, :hashtags, :tweetid, :photo
  json.url tweet_info_url(tweet_info, format: :json)
end
