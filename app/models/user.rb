class User < ApplicationRecord
  has_secure_password
  has_secure_token
  has_many :cat_favorites, dependent: :destroy
  has_many :cat_favorite_cats, through: :cat_favorites, source: :cat
  has_many :feedings
  has_many :feeding_cats, through: :feedings, source: :cat
  has_many :images
  has_many :cats, through: :images
  has_many :likes
  has_many :images, through: :likes
end
