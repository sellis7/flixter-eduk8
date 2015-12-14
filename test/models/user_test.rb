require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "able to log in?" do
    assert_difference 'User.count' do
      user = FactoryGirl.create(:user)
		end
		assert_equal 1, user.count
  end

end
