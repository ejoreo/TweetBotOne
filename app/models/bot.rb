class Bot < ApplicationRecord


  def self.search_words words
    CLIENT.search(words, lang: "en").first.text
  end

  def self.dig_for_tweets tweets
    tweets.each { |t|
      url = nil
      if t.attrs[:entities][:urls].size > 0
        url = t.attrs[:entities][:urls][0][:expanded_url]
      end

      @tweet_deet = TweetDeet.create(user: t.user.screen_name,
                                     tweetid: t.id.to_s,
                                     link: url,
                                     tweet: t.full_text)
      puts @tweet_deet.inspect
    }
  end

  def self.timeline_grab screen_name
    tweet_array = CLIENT.user_timeline(screen_name, {include_rts: false,
                                                     exclude_replies: true})
    self.dig_for_tweets tweet_array
  end

  #def self.find_user username
    #CLIENT.user_timeline(username).text
  #end
end
#[:entities][:user_mentions][1]
