# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ROLES is from the user model
# Role is the table in the database
# name is the column in the table
User::ROLES.each do |role_name|
  Role.find_or_create_by!(name: role_name.to_s)
end

puts "Seeding Users"

# create users
users = [
  { email: "manager@rubystateportal.net", role: :manager },
  { email: "developer@rubystateportal.net", role: :developer },
  { email: "resident@rubystateportal.net", role: :resident }
]

users.each do |user_data|
  User.find_or_create_by!(email_address: user_data[:email]) do |u|
    u.password = "Password1"
    u.add_role(user_data[:role])
    puts "Created #{user_data[:role]}: #{user_data[:email]}"
  end
end
