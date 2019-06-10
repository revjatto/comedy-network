require 'test_helper'

class GigglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @giggle = giggles(:one)
  end

  test "should get index" do
    get giggles_url
    assert_response :success
  end

  test "should get new" do
    get new_giggle_url
    assert_response :success
  end

  test "should create giggle" do
    assert_difference('Giggle.count') do
      post giggles_url, params: { giggle: { author: @giggle.author, body: @giggle.body, title: @giggle.title } }
    end

    assert_redirected_to giggle_url(Giggle.last)
  end

  test "should show giggle" do
    get giggle_url(@giggle)
    assert_response :success
  end

  test "should get edit" do
    get edit_giggle_url(@giggle)
    assert_response :success
  end

  test "should update giggle" do
    patch giggle_url(@giggle), params: { giggle: { author: @giggle.author, body: @giggle.body, title: @giggle.title } }
    assert_redirected_to giggle_url(@giggle)
  end

  test "should destroy giggle" do
    assert_difference('Giggle.count', -1) do
      delete giggle_url(@giggle)
    end

    assert_redirected_to giggles_url
  end
end
