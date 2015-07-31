class GeoLocation
  def self.get_city_name(lat, lon)
    query = "#{lat},#{lon}"
    first_result = Geocoder.search(query).first
    if first_result.present?
      first_result.city
    else
      return ""
    end
  end
end