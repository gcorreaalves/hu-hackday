class HomeController < ApplicationController
  def index
    @recent_huhackday = client.tag_recent_media('huhackday')
  end

  def client
    Instagram.client(access_token: ENV['INSTAGRAM_ACCESS_TOKEN'])
  end
end
