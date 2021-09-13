class VisitorsController < ApplicationController
  def index
  end

  def contact
  end

  def send_contact
    # TODO
    # Add Mailer Logic
    from = params[:contact][:from]
    subject = params[:contact][:subject]
    message = params[:contact][:message]
    #ConactMailer.send_contact(from, subject, message).deliver_now
    ContactMailerJob.perform(from, subject, message)
    redirect_to root_url, notice: 'Your message has been sent!'
  end
end
