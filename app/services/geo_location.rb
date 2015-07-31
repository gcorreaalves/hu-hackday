class GeoLocation
  def self.get_city_name(lat, lon)
    query = "#{lat},#{lon}"
    if cached_result = REDIS.get(query)
      cached_result
    else
      first_result = Geocoder.search(query).first

      if first_result.present?
        REDIS.set(query, first_result.city)
      else
        REDIS.set(query, "")
      end
    end
  end
end
