ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address => "smtp.yandex.ru",
  :port => 587,
  :domain => '84962180218.ru',
  :authentication => :plain,
  :user_name => 'info@84962180218.ru',
  :password => ENV['MAIL_PASSWORD']
}