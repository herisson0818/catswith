class Image < ApplicationRecord
  belongs_to :user
  belongs_to :cat
  has_one_attached :cat_photo
  has_many :likes
  has_many :users, through: :likes
end
