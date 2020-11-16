class Area < ApplicationRecord
  self.primary_key = :zip_code
  has_many :cats, dependent: :destroy
end
