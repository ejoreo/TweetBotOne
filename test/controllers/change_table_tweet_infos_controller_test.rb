require 'test_helper'

class ChangeTableTweetInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_table_tweet_info = change_table_tweet_infos(:one)
  end

  test "should get index" do
    get change_table_tweet_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_change_table_tweet_info_url
    assert_response :success
  end

  test "should create change_table_tweet_info" do
    assert_difference('ChangeTableTweetInfo.count') do
      post change_table_tweet_infos_url, params: { change_table_tweet_info: { tweetid: @change_table_tweet_info.tweetid } }
    end

    assert_redirected_to change_table_tweet_info_url(ChangeTableTweetInfo.last)
  end

  test "should show change_table_tweet_info" do
    get change_table_tweet_info_url(@change_table_tweet_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_table_tweet_info_url(@change_table_tweet_info)
    assert_response :success
  end

  test "should update change_table_tweet_info" do
    patch change_table_tweet_info_url(@change_table_tweet_info), params: { change_table_tweet_info: { tweetid: @change_table_tweet_info.tweetid } }
    assert_redirected_to change_table_tweet_info_url(@change_table_tweet_info)
  end

  test "should destroy change_table_tweet_info" do
    assert_difference('ChangeTableTweetInfo.count', -1) do
      delete change_table_tweet_info_url(@change_table_tweet_info)
    end

    assert_redirected_to change_table_tweet_infos_url
  end
end
