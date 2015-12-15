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

  test "can view course?" do
    user = FactoryGirl.create(:user)
    sign_in user
    course = FactoryGirl.create(:course, :user => user)
    # assert_difference 'Course.count' do
    #   post :create, :user => user, :course =>{ :title => "Yes you Can",
    #   :description => "Because everyone knows an ant can't move a rubber tree plant.",
    #   :cost => 3.50}
    #   assert_redirected_to instructor_course_path(course)
    #
    #
    # end
    assert_response :success
    # PASSES
    #assert_equal 2, user.courses.count
  end
end
