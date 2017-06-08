require 'test_helper'

class OrganiserFollowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organiser_follow = organiser_follows(:one)
  end

  test "should get index" do
    get organiser_follows_url
    assert_response :success
  end

  test "should get new" do
    get new_organiser_follow_url
    assert_response :success
  end

  test "should create organiser_follow" do
    assert_difference('OrganiserFollow.count') do
      post organiser_follows_url, params: { organiser_follow: { organiser_id: @organiser_follow.organiser_id, user: @organiser_follow.user } }
    end

    assert_redirected_to organiser_follow_url(OrganiserFollow.last)
  end

  test "should show organiser_follow" do
    get organiser_follow_url(@organiser_follow)
    assert_response :success
  end

  test "should get edit" do
    get edit_organiser_follow_url(@organiser_follow)
    assert_response :success
  end

  test "should update organiser_follow" do
    patch organiser_follow_url(@organiser_follow), params: { organiser_follow: { organiser_id: @organiser_follow.organiser_id, user: @organiser_follow.user } }
    assert_redirected_to organiser_follow_url(@organiser_follow)
  end

  test "should destroy organiser_follow" do
    assert_difference('OrganiserFollow.count', -1) do
      delete organiser_follow_url(@organiser_follow)
    end

    assert_redirected_to organiser_follows_url
  end
end
