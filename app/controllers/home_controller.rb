class HomeController < ApplicationController
  def index
    @recent_huhackday = FilterValidMedia.from(client.tag_recent_media('huhackday'))
  end
end
