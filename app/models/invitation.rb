class Invitation < ApplicationRecord
  belongs_to :property
  belongs_to :unit
end
