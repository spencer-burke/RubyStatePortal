class SingleUnitProperty < Property
  validates :address_extension, length: { maximum: 255 }
end
