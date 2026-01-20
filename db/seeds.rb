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
  { email: "resident@rubystateportal.net", role: :resident },
  { email: "occupant@rubystateportal.net", role: :occupant }
]

users.each do |user_data|
  User.find_or_create_by!(email_address: user_data[:email]) do |u|
    u.password = "Password1"
    u.add_role(user_data[:role])
    puts "Created #{user_data[:role]}: #{user_data[:email]}"
  end
end

puts "Seeding Properties"

puts "Removing Previous Properties from Database"
Property.destroy_all

puts "Creating Single Unit Properties..."
5.times do |i|
  SingleUnitProperty.create!(
    name: "Cottage #{i + 1}",
    address: "#{100 + i} Maple Lane",
    address_extension: "Suite #{600 + i}",
    city: "Portland",
    state: "OR",
    country: "USA"
  )
end

puts "Creating Multi Unit Properties..."
3.times do |i|
  MultiUnitProperty.create!(
    name: "Skyline Complex #{i + 1}",
    address: "#{5000 + i} Broadway Ave",
    city: "Seattle",
    state: "WA",
    country: "USA"
  )
end

puts "Created #{Property.count} properties!"
