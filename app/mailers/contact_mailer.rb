class ContactMailer < ApplicationMailer
  default from: 'info@84962180218.ru'
 
  def call_back_mail(contact)
    @contact = contact
    mail(to: 'info@84962180218.ru', subject: 'Обратный звонок')
  end
end
