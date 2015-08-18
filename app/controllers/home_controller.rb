class HomeController < ApplicationController
  def index
    @recent_huhackday = FilterValidMedia.from(client.tag_recent_media('fotografohu'))
  end

  def landscape
  end
end
