# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create([{ name: 'Hans im Glück', address: "Munich", phone_number: "12345678", category: "french" },
  { name: 'Burger King', address: "Berlin", phone_number: "12345678", category: "italian" },
  { name: 'Cay Tre', address: "Hamburg", phone_number: "12345678", category: "chinese" },
  { name: 'French Fries', address: "Munich", phone_number: "12345678", category: "french" },
  { name: 'Pralines', address: "Heidelberg", phone_number: "12345678", category: "belgian" }])

puts "Finished!"
