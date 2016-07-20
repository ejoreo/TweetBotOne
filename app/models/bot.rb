class Bot < ApplicationRecord


  def self.search_words words
    CLIENT.search(words, lang: "en").first.text
  end

  def self.f_u number, words #f_u = find_user
    CLIENT.search(words, lang: "en").take(number).each { |t|
      url  = nil
      if t.attrs[:entities][:urls].size > 0
        url = t.attrs[:entities][:urls][0][:expanded_url]

        #TweetInfo.create(name: t.user.screen_name, tweet_id: t.id.to_s, link: t.url, text: t.full_text)
      end
      @tweet_deet = TweetDeet.create(user: t.user.screen_name,
                                  tweetid: t.id.to_s,
                                  link: url,
                                  tweet: t.full_text)

      puts @tweet_deet.inspect
      @tweet_deet.save
    }
  end

end
#[:entities][:user_mentions][1]
