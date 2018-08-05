class ContactMailer < ActionMailer::Base
  default from: "w1th1nmybr41n@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent(contact)
    @contact = contact
    mail(to: @contact.email, subject: "Thank you for your contact!")
  end
  
  def receive(contact)
    @contact = contact
    mail(to: "w1th1nmybr41n@gmail.com", subject: "Inquery from your customer!")
  end
end