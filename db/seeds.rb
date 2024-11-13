# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31", category: "french")
puts "La Tour d'Argent"
Restaurant.create!(name: "Nomo Sarria", address: "Carrer Major de Sarria, 105, Sarria-Sant Gervasi, 08034 Barcelona, Spain", phone_number: "22 11 77 55 88", category: "japanese")
puts "Nomo Sarria"

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ, United Kingdom", phone_number: "44 20 77 29 18", category: "italian")
puts "Pizza East created"

Restaurant.create!(name: "Le Petit Bistro", address: "18 Rue du Général Bertrand, 75007 Paris, France", phone_number: "33 47 05 23 65", category: "belgian")
puts "Le Petit Bistro created"

Restaurant.create!(name: "Wang's Kitchen", address: "5 Upper Cross St, #02-02, Singapore 058351", phone_number: "65 62 25 19 91", category: "chinese")
puts "Wang's Kitchen created"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
