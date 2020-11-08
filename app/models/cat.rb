class Cat < ApplicationRecord
  has_many :cat_favorites, dependent: :destroy
  has_many :cat_favorite_users, through: :cat_favorites, source: :user
  has_many :feedings
  has_many :feeding_users, through: :feedings, source: :user
  has_many :images
  has_many :users, through: :images
end
