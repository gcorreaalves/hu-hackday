class AddCitySlugToMedia < ActiveRecord::Migration
  def change
    add_column :media, :city_slug, :string
  end
end
