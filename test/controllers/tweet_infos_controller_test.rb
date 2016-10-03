require 'test_helper'

class TweetInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_info = tweet_infos(:one)
  end

  test "should get index" do
    get tweet_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_info_url
    assert_response :success
  end

  test "should create tweet_info" do
    assert_difference('TweetInfo.count') do
      post tweet_infos_url, params: { tweet_info: { hashtags: @tweet_info.hashtags, link: @tweet_info.link, photo: @tweet_info.photo, tweet: @tweet_info.tweet, tweetid: @tweet_info.tweetid, user: @tweet_info.user } }
    end

    assert_redirected_to tweet_info_url(TweetInfo.last)
  end

  test "should show tweet_info" do
    get tweet_info_url(@tweet_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_info_url(@tweet_info)
    assert_response :success
  end

  test "should update tweet_info" do
    patch tweet_info_url(@tweet_info), params: { tweet_info: { hashtags: @tweet_info.hashtags, link: @tweet_info.link, photo: @tweet_info.photo, tweet: @tweet_info.tweet, tweetid: @tweet_info.tweetid, user: @tweet_info.user } }
    assert_redirected_to tweet_info_url(@tweet_info)
  end

  test "should destroy tweet_info" do
    assert_difference('TweetInfo.count', -1) do
      delete tweet_info_url(@tweet_info)
    end

    assert_redirected_to tweet_infos_url
  end
end
