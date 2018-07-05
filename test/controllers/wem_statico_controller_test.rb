require 'test_helper'

class WemStaticoControllerTest < ActionDispatch::IntegrationTest

  test "should get homepege" do
    get wem_statico_homepege_url
    assert_response :success

  end

  test "should get help" do
    get wem_statico_help_url
    assert_response :success

  end
  test "should get about" do
    get wem_statico_about_url
    assert_response :success


  end

  test "should get contact" do
    get wem_statico_contact_url
    assert_response :success


  end

end
