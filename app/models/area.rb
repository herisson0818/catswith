class Area < ApplicationRecord
  #self.foreign_key = :zip_code
  has_many :cats, dependent: :destroy
end
