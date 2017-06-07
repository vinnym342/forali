require 'test_helper'

class EventPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_page = event_pages(:one)
  end

  test "should get index" do
    get event_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_event_page_url
    assert_response :success
  end

  test "should create event_page" do
    assert_difference('EventPage.count') do
      post event_pages_url, params: { event_page: { host: @event_page.host, title: @event_page.title } }
    end

    assert_redirected_to event_page_url(EventPage.last)
  end

  test "should show event_page" do
    get event_page_url(@event_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_page_url(@event_page)
    assert_response :success
  end

  test "should update event_page" do
    patch event_page_url(@event_page), params: { event_page: { host: @event_page.host, title: @event_page.title } }
    assert_redirected_to event_page_url(@event_page)
  end

  test "should destroy event_page" do
    assert_difference('EventPage.count', -1) do
      delete event_page_url(@event_page)
    end

    assert_redirected_to event_pages_url
  end
end
