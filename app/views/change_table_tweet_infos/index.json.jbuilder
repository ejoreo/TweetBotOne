json.array!(@change_table_tweet_infos) do |change_table_tweet_info|
  json.extract! change_table_tweet_info, :id, :tweetid
  json.url change_table_tweet_info_url(change_table_tweet_info, format: :json)
end
