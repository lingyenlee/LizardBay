# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lizards = ["Leopard Gecko", "Anole", "Bearded Dragon", "Chameleons", "Gecko", 
"Iguana", "Monitor Lizard", "Skink", "Uromastyx", "Agama", "Others"]

lizards.each do |lizard|
    Breed.create(name: lizard)
    puts "#{lizard} created."
end