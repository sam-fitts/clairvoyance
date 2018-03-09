# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding DB..."

User.create!(
  email: "user@agency.test",
  password: "password",
  agency: true,
  business_name: 'Agency Company'
)

User.create!(
  email: "user@client.test",
  password: "password",
  agency: false,
  business_name: 'Client Company'
)

puts "DB has now #{User.count} users."
