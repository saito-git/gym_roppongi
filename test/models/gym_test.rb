require 'test_helper'

class GymTest < ActiveSupport::TestCase

  def setup
    @gym = Gym.new(name: "Example Gym", address: "exmaple place", password:"foobar", password_confirmation:"foobar")
  end

  test "should be valid" do
    assert @gym.valid?
  end

  test "name should be present" do
    @gym.name = "     "
    assert_not @gym.valid?
  end

  test "address should be present" do
    @gym.address = "     "
  assert_not @gym.valid?
  end

  test "password should be present (nonblank)" do
    @gym.password = @gym.password_confirmation = " " * 6
    assert_not @gym.valid?
  end

  test "password should have a minimum length" do
    @gym.password = @gym.password_confirmation = "a" * 5
    assert_not @gym.valid?
  end
end
