class SignupMailer < ActionMailer::Base
  default from: 'zack@stayman.co'

  def confirm_email(user)
    @user = user
    @website = 'www.stayman.co'
    attachments['zack_stayman.vcf'] = File.read("app/assets/images/Zack_Stayman.vcf")
    mail(to: @user.email, subject: 'Thank you for coming to the General Assembly Meet and Greet')

  end
end
