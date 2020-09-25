class ContactMailer < ApplicationMailer
  default from: 'liderstroy-dubna@mail.ru'
 
  def call_back_mail(contact)
    @contact = contact
    mail(to: 'liderstroy-dubna@mail.ru', subject: 'Обратный звонок')
  end
end
