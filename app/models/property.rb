class Property < ApplicationRecord
  # This allows @property.units
  has_many :units, dependent: :destroy

  # Optional: allow creating units inside a property form
  accepts_nested_attributes_for :units, allow_destroy: true
end
