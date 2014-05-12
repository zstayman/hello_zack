class SignupMailer < ActionMailer::Base
  default from: 'zack@stayman.co'

  def confirm_email(user)
    @user = user
    @website = 'http://www.stayman.co'
    mail(to: @user.email, subject: 'Thank you for coming to the General Assembly Meet and Greet')
  end
end
