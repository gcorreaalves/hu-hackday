module HomeHelper
  def city_by_lat_long(lat, lon)
    city_name = GeoLocation.get_city_name(lat, lon)
    if city_name
      "#" + city_name.downcase.gsub(/\s+/, "")
    else
      ""
    end
  end
end
