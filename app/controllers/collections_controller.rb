class CollectionsController < ApplicationController
  def show
    @items = SplitByDate.perform(Media.where(city_slug: params[:id]))
  end
end
