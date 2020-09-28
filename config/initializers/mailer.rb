ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :tls => true,
  :address => "smtp.mail.ru",
  :port => 465,
  :domain => 'mail.ru',
  :authentication => :plain,
  :user_name => 'liderstroy-dubna@mail.ru',
  :password => ENV['MAIL_PASSWORD'],
  :enable_starttls_auto => true
}