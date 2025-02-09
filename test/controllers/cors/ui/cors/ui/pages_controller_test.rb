require "test_helper"

module Cors::Ui
  class Cors::Ui::PagesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get about" do
      get cors_ui_pages_about_url
      assert_response :success
    end
  end
end
