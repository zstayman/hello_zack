class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @user = Signup.new(signup_params)
    if @user.save
      binding.pry
      SignupMailer.confirm_email(@user).deliver
      render json: @user
    else
      render json: @user.errors, status: :unproccessable_entity
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:first_name, :last_name, :email, :company, :phone_number)
  end
end
