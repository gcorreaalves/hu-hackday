class SplitByDate
  def self.perform(array)
    array.each_with_object({}) do |item, memo|
      memo[item.created_at_ig.year] ||= {}
      memo[item.created_at_ig.year][I18n.l(item.created_at_ig, format: :month)] ||= []
      memo[item.created_at_ig.year][I18n.l(item.created_at_ig, format: :month)] << item
    end
  end
end
