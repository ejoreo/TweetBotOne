json.array!(@models) do |model|
  json.extract! model, :id, :TweetInfo, :user, :tweet, :link, :hashtags, :tweetid, :photo
  json.url model_url(model, format: :json)
end
