class Media < ActiveRecord::Base
  validates :media_ig_id, presence: true
  validates :user_name, presence: true
  validates :post_url, presence: true
  validates :user_avatar_url, presence: true
  validates :url_thumb, presence: true
  validates :url_standard, presence: true
  
  validates :longitute, presence: true
  validates :latitude, presence: true
  validates :city, presence: true

  validates :created_at_ig, presence: true
end   
