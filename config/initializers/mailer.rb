ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address => "smtp.mail.ru",
  :port => 465,
  :domain => '84962180218.ru',
  :authentication => :plain,
  :user_name => 'liderstroy-dubna@mail.ru',
  :password => ENV['MAIL_PASSWORD']
}