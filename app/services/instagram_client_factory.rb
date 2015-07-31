class InstagramClientFactory
  def self.get_instance
    Instagram.client(access_token: ENV['INSTAGRAM_ACCESS_TOKEN'])
  end
end
