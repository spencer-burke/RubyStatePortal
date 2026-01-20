class SingleUnitProperty < ApplicationRecord
  validates :address_extension, length: { maximum: 255 }
end
