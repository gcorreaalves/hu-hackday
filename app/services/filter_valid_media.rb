class FilterValidMedia
  def self.from(array)
    array.select do |item|
      item['type'] == 'image' &&
      (item['location'] || {}).has_key?('latitude') &&
      (item['location'] || {}).has_key?('longitude')
    end
  end
end
