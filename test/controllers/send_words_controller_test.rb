require 'test_helper'

class SendWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get send_words_index_url
    assert_response :success
  end

  test "should get new" do
    get send_words_new_url
    assert_response :success
  end

  test "should get create" do
    get send_words_create_url
    assert_response :success
  end

end
