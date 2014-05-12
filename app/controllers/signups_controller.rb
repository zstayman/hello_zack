class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  def create
    @user = Signup.new(signup_params)
    # @user.save ?  :
  end

  private

  def signup_params
    params.require(:signup).permit(:first_name, :last_name, :email, :company, :phone_number)
  end
end
