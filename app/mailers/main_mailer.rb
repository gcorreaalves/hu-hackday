class MainMailer < ApplicationMailer
  def invite_user(email, image)
    @image = image
    mail(to: email, subject: '#digauHuu - Hotel Urbano')
  end
end
