class Message < ApplicationRecord
  belongs_to :user
  belongs_to :property
  belongs_to :unit
end
