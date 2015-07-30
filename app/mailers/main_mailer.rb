class MainMailer < ApplicationMailer
  def invite_user(email)
    mail(to: email, subject: 'Invitation')
  end
end
