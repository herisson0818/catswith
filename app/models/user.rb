class User < ApplicationRecord
  has_secure_password
  has_secure_token
  has_many :cat_favorites, dependent: :destroy
  has_many :cats, through: :cat_favorites
  has_many :feedings
  has_many :cats, through: :feedings
  has_many :images
  has_many :cats, through: :images
  has_many :likes, dependent: :destroy
  has_many :images, through: :likes
  belongs_to :area
end
