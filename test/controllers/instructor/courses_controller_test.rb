require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "instructor logged in to view?" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :new, :user => user
    assert_response :success
    # PASSES
  end
end
