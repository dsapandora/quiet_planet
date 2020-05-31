class City < ApplicationRecord
  belongs_to :country
  validates :name, uniqueness: true
end
