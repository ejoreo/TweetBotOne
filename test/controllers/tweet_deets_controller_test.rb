require 'test_helper'

class TweetDeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_deet = tweet_deets(:one)
  end

  test "should get index" do
    get tweet_deets_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_deet_url
    assert_response :success
  end

  test "should create tweet_deet" do
    assert_difference('TweetDeet.count') do
      post tweet_deets_url, params: { tweet_deet: {  } }
    end

    assert_redirected_to tweet_deet_url(TweetDeet.last)
  end

  test "should show tweet_deet" do
    get tweet_deet_url(@tweet_deet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_deet_url(@tweet_deet)
    assert_response :success
  end

  test "should update tweet_deet" do
    patch tweet_deet_url(@tweet_deet), params: { tweet_deet: {  } }
    assert_redirected_to tweet_deet_url(@tweet_deet)
  end

  test "should destroy tweet_deet" do
    assert_difference('TweetDeet.count', -1) do
      delete tweet_deet_url(@tweet_deet)
    end

    assert_redirected_to tweet_deets_url
  end
end
