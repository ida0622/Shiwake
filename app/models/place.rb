class Place < ApplicationRecord
  has_many :items, dependent: :destroy
end
