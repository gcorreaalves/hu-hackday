class CollectionsController < ApplicationController
  def show
    @items = Media.all
  end
end
