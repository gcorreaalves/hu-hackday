class MediaController < ApplicationController
  respond_to :js

  def create
    @media = Media.create(media_params)
  end

  private

  def media_params
    params.require(:media).permit!
  end
end
