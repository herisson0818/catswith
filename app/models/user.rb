class User < ApplicationRecord
  has_secure_password
  has_secure_token
  has_many :cat_favorites, dependent: :destroy
  has_many :cat_favorite_cats, through: :cat_favorites, source: :cat
end
