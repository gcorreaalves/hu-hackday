class GeoLocation
  def self.get_city_name(lat, lon)
    redis = Redis.new

    query = "#{lat},#{lon}"
    if cached_result = redis.get(query)
      cached_result
    else
      first_result = Geocoder.search(query).first

      if first_result.present?
        redis.set(query, first_result.city)
      else
        redis.set(query, "")
      end
    end
  end
end
