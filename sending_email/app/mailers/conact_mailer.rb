class ConactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.conact_mailer.send_contact.subject
  #
  def send_contact(from, subject, message)
    @from  = from
    @subject = subject
    @message = message
    mail to: "paymankazemipymkz@gmail.com", subject: @subject

  end
end
