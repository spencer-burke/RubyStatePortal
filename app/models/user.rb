class User < ApplicationRecord
  rolify
  has_secure_password
  has_many :sessions, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }

  ROLES = %w[resident manager developer].freeze
  ROLES = [ :resident, :manager, :developer ].freeze

  ROLES.each do |role_name|
    define_method("#{role_name}?") do
      has_role?(role_name)
    end
  end
end
