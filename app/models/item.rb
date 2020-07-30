class Item < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :place, optional: true
  REGISTRABLE_ATTRIBUTES = %i(
    name
    arrival_date(1i) arrival_date(2i) arrival_date(3i)
    )
end
