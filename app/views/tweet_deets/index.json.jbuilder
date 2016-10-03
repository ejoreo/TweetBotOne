json.array!(@tweet_deets) do |tweet_deet|
  json.extract! tweet_deet, :id
  json.url tweet_deet_url(tweet_deet, format: :json)
end
