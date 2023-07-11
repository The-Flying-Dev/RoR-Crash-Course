require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # get request for new user page
  test "should get new with new user" do 
    get :new 

    user = assigns(:user)

    assert user.new_record?
    asssert_response :success 
  end

  # expects a hash of values for new user 
  test "should create user" do
    params = {
      user: {
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }
    }

    post :create, params

    assert_redirected_to root_url
  end
end
