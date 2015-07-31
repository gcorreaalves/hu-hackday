class FilterValidMedia
  def self.from(array)
    media_count = Media.all.pluck(:media_ig_id)
    media_blacklist_count = MediaBlackList.all.pluck(:media_ig_id)
    media_blocked = media_count | media_blacklist_count
    array.select do |item|
      !media_blocked.include?(item['id']) &&
      item['type'] == 'image' &&
      (item['location'] || {}).has_key?('latitude') &&
      (item['location'] || {}).has_key?('longitude')
    end

  end
end
