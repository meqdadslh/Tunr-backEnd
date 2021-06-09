require "test_helper"

class TunrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tunr = tunrs(:one)
  end

  test "should get index" do
    get tunrs_url, as: :json
    assert_response :success
  end

  test "should create tunr" do
    assert_difference('Tunr.count') do
      post tunrs_url, params: { tunr: { artis: @tunr.artis, duration: @tunr.duration, title: @tunr.title } }, as: :json
    end

    assert_response 201
  end

  test "should show tunr" do
    get tunr_url(@tunr), as: :json
    assert_response :success
  end

  test "should update tunr" do
    patch tunr_url(@tunr), params: { tunr: { artis: @tunr.artis, duration: @tunr.duration, title: @tunr.title } }, as: :json
    assert_response 200
  end

  test "should destroy tunr" do
    assert_difference('Tunr.count', -1) do
      delete tunr_url(@tunr), as: :json
    end

    assert_response 204
  end
end
