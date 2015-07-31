class FilterValidMedia
  def self.from(array)
    array.select do |item|
      media_count = Media.where(media_ig_id: item['id']).count

      media_count == 0 &&
      item['type'] == 'image' &&
      (item['location'] || {}).has_key?('latitude') &&
      (item['location'] || {}).has_key?('longitude')
    end
  end
end
