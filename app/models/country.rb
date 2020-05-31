class Country < ApplicationRecord
  validates :name, uniqueness: true
end
