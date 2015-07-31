class MediaController < ApplicationController
  respond_to :js

  def create
    if @media = Media.create(media_params)
      client.create_media_comment(@media.media_ig_id, "Uhuu! Sua imagem foi selecionada por nós.\nCopie o link abaixo e cole no seu navegador para concorrer!\n\n#{new_user_registration_path}")
    end
  end

  private

  def media_params
    params.require(:media).permit!
  end
end
