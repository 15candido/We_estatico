require 'test_helper'

class WemStaticoControllerTest < ActionDispatch::IntegrationTest

  test "should get homepege" do
    get homepege_url
    assert_response :success

  end

  test "should get help" do
    get help_url
    assert_response :success

  end
  test "should get about" do
    get about_url
    assert_response :success


  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end

end
