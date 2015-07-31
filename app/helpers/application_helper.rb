module ApplicationHelper
  def collections
    @collections = Media.select(:city_slug).uniq
  end

end
