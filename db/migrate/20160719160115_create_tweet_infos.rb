class CreateTweetInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :tweet_infos do |t|
      t.string :user
      t.string :tweet
      t.string :link
      t.string :hashtags
      t.string :tweet
      t.string :photo

      t.timestamps
    end
  end
end
