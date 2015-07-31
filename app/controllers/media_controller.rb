class MediaController < ApplicationController
  respond_to :js

  def create
    @media = Media.new

    @media.media_ig_id = media_params[:id]
    @media.user_name = media_params[:caption][:from][:username]
    @media.post_url = media_params[:link]
    @media.user_avatar_url = media_params[:caption][:from][:profile_picture]
    @media.url_thumb = media_params[:images][:thumbnail][:url]
    @media.url_standard = media_params[:images][:standard_resolution][:url]
    @media.longitute = media_params[:location][:longitude]
    @media.latitude = media_params[:location][:latitude]
    @media.city = "get city from maps"
    @media.created_at_ig = DateTime.strptime(media_params[:created_time],'%s')

    if @media.save!
      client.create_media_comment(@media.media_ig_id, "Uhuu! Sua imagem foi selecionada por nós.\nCopie o link abaixo e cole no seu navegador para concorrer!\n\n#{new_user_registration_path}")
    end
  end

  private

  def media_params
    params.require(:media).permit(:created_time, :link, :location, :id,  :caption => [:from => [:username, :profile_picture] ], :images => [:standard_resolution => [:url], :thumbnail => [:url]], :location => [:latitude, :longitude])
  end
end
