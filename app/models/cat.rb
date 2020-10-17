class Cat < ApplicationRecord
  has_many :cat_favorites, dependent: :destroy
  has_many :cat_favorite_users, through: :cat_favorites, source: :use
end
