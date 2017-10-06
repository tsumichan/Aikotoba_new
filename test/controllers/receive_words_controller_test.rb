require 'test_helper'

class ReceiveWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receive_words_index_url
    assert_response :success
  end

end
