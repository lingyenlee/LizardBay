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

for i in 1..15
    Listing.create(
        title: Faker::Lorem.sentence(word_count: 3),
        description: Faker::Lorem.paragraph,
        age: [*1..5].sample,
        sex: [0,1].sample,
        diet: Faker::Food.description,
        price: rand(1...2000),
        deposit: 10,
        city: Faker::Address.city,
        state: Faker::Address.state,
        breed_id: [*1..11].sample
    )
    # l.picture.attach(io: File.open(image_data),
    # l.picture.attach(io: File.open("storage/Jw/5c/Jw5cW7megtWJdUy4W1qvyQEE"),
    # filename: "file.png", content_type: "image/png")
    # l.picture.attach(io: File.open(Rails.root.join("app/assets/images/hero.png")), 
    # filename: "hero.png", content_type: "image/png")

    puts "Listing #{i} created."
end
