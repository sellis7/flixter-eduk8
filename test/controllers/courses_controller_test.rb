require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "display particular course" do
    course = FactoryGirl.create(:course)
    get :show, 'id' => course.id
    assert_response :success
    assert_not_nil assigns(:course)
  end # PASSES



end
