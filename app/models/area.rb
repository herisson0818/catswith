class Area < ApplicationRecord
  has_many :cats, dependent: :destroy
  has_many :users
end
