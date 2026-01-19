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

=begin
properties = [
  {
    name: "Sunset Valley Apartments",
    is_multi_unit: true,
    address_1: "123 Solar Way",
    address_2: "Suite 100",
    city: "Phoenix",
    state: "AZ",
    zip_code: "85001"
  },
  {
    name: "The Blue House",
    is_multi_unit: false,
    address_1: "456 Maple Avenue",
    address_2: nil,
    city: "Portland",
    state: "OR",
    zip_code: "97201"
  },
  {
    name: "Riverfront Lofts",
    is_multi_unit: true,
    address_1: "888 Harbor Drive",
    address_2: "Bldg B",
    city: "Chicago",
    state: "IL",
    zip_code: "60601"
  },
  {
    name: "Cedar Ridge Duplex",
    is_multi_unit: true,
    address_1: "1010 Pine Lane",
    address_2: "Unit A",
    city: "Denver",
    state: "CO",
    zip_code: "80202"
  }
]

properties.each do |property|
  Property.create!(property)
  puts "Created property with name #{property[:name]}"
end

puts "Seed complete! Created #{Property.count} properties."
=end
