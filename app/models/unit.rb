class Unit < ApplicationRecord
  # This allows @unit.property
  belongs_to :property
end
