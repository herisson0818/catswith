class Area < ApplicationRecord
  has_many :cats, dependent: :destroy
end
