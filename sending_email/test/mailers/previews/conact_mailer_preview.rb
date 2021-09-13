# Preview all emails at http://localhost:3000/rails/mailers/conact_mailer
class ConactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/conact_mailer/send_contact
  def send_contact
    from = 'sample@example.com'
    subject = 'Site Feedback'
    message = 'You should really have more episodes about different taco flavoring'
    ConactMailer.send_contact(from, subject, message)
  end

end
