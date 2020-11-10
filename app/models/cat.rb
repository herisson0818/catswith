class Cat < ApplicationRecord
  has_many :cat_favorites, dependent: :destroy
  has_many :users, through: :cat_favorites
  has_many :feedings, dependent: :destroy
  has_many :users, through: :feedings
  has_many :images, dependent: :destroy
  has_many :users, through: :images
end
