require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "get new user page" do
    get new_user_path
    assert_template :new
  end

  test "create user succeeded" do
    user = User.new(email: "example@gmail.com", first_name:"Andy", last_name:"White", address:"Taipei")
    assert user.save
  end

  test "create user failed" do
    user = User.new
    assert_not user.save
  end
end
