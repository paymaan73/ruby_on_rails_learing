class ContactMailerJob < ApplicationJob
  queue_as :default

  def perform(from, subject, message)
    ConactMailer.send_contact(from, subject, message)
  end
end
