require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save user without first name" do
    user = User.new
    assert_not user.save, "Saved the user without a first name"
  end

  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    some_undefined_variable
    assert true
  end

end
