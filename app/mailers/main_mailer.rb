class MainMailer < ApplicationMailer
  def invite_user(email, image)
    @image = image
    mail(to: email, subject: '#digauHuu - Você ganhou créditos no Hotel Urbano')
  end
end
