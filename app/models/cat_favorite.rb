class CatFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :cat
end
