
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "stayman.co",
  user_name: EMAIL,
  password: PASSWORD,
  authentication: "plain",
  enable_starttls_auto: true
}

