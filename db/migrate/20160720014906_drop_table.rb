class DropTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :tweet_infos

    create_table :tweet_deets do |t|
      t.string :user
      t.string :tweet
      t.string :link
      t.string :hashtags
      t.string :tweet
      t.string :photo
    end
  end
end
