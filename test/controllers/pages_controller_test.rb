require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get projects" do
    get :projects
    assert_response :success
  end

  test "should get posts" do
    get :posts
    assert_response :success
  end

end
