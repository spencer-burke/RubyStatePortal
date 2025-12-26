class User < ApplicationRecord
  rolify
  has_secure_password
  has_many :sessions, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }

  # use ||= operator to tell rails/ruby to only make the values if they don't exist
  ROLES ||= [ :resident, :manager, :developer ].freeze

  ROLES.each do |role_name|
    define_method("#{role_name}?") do
      has_role?(role_name)
    end
  end
end
