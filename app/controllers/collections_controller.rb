class CollectionsController < ApplicationController
  def show
    @items = Media.where(city_slug: params[:id]).each_with_object({}) do |item, memo|
      memo[item.created_at_ig.year] ||= {}
      memo[item.created_at_ig.year][item.created_at_ig.strftime('%B')] ||= []
      memo[item.created_at_ig.year][item.created_at_ig.strftime('%B')] << item
    end
  end
end
