require "test_helper"

module Cors::Ui
  class Cors::Ui::HomeControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get cors_ui_home_index_url
      assert_response :success
    end
  end
end
