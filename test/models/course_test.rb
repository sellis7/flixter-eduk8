require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_db_column :title
  should have_db_column :description
  should have_db_column :cost

  should validate_presence_of :title
  should validate_presence_of :description
  should validate_presence_of :cost
  should validate_numericality_of(:cost).is_greater_than_or_equal_to(0)

  def setup
    @course = Course.new
  end

  test "validate presence of course title" do
    assert_not @course.save, "No title present"
  end

  test "validate presence of course description" do
    assert_not @course.save, "No description present"
  end

  test "validate presence of course cost" do
    assert_not @course.save, "No cost present"
  end

  test "cost is greater than or equal to 0" do
    course = FactoryGirl.build(:course)
    course.cost = -2.5
    assert_not course.save, "Cost can't be less than 0"
  end

  test "user can create course?" do
    user = FactoryGirl.create(:user)
    assert_difference 'Course.count' do
      course = FactoryGirl.create(:course, user: user)
    end
    assert_equal 1, user.courses.count
  end # PASSES

  test "monetary_value" do
    course = Course.create(title: "How to do stuff", description: "If you want to know how to do stuff, this is the best place to start",
      cost: 3.5, image: "imagehere.png")
    expect = "$3.50"
    assert_equal expect, course.monetary_value
  end # PASSES (was checking number_to_currency type function)

  def teardown
    @course = nil
  end

end
