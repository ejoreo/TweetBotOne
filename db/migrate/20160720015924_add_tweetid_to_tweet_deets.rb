class AddTweetidToTweetDeets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweet_deets, :tweetid, :string
  end
end
