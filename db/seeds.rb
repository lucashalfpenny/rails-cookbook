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
Recipe.destroy_all

puts "Creating recipes"

Recipe.create!(name:"Chocolate cake", description:"Indulge yourself with this ultimate chocolate ganache cake recipe that is beautifully moist, rich and fudgy. Perfect for a celebration or an afternoon tea", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1043451_11-4713959.jpg?quality=90&resize=440,400", rating: 4.1)
puts "Created #{Recipe.count}"
Recipe.create!(name: "Butter bean & chorizo stew", description:"A hearty stew to feed a family with just four ingredients. Spicy chorizo and fresh pesto provide tons of flavour and it's on the table in just 20 minutes", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/butter-bean-chorizo-stew-c630c75.jpg?quality=90&resize=440,400", rating: 4.6)
puts "Created #{Recipe.count}"
Recipe.create!(name: "Quick pizza dough", description:"Make our speedy pizza base, then add a tomato sauce and your favourite toppings. If you're after a thin crust, you don't need to prove it for longer than 5 mins", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2024/02/Quick-pizza-dough-afc956e.jpg?quality=90&resize=556,505", rating: 3.6)
puts "Created #{Recipe.count}"
Recipe.create!(name: "Air fryer meatballs", description:"Cook these sausage and beef meatballs in an air-fryer for ease. Serve with tomato sauce and pasta or enjoy in a meatball sub", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2024/03/AIrFryerMeatballs-98bf24a.jpg?quality=90&resize=556,505", rating: 3.2)
puts "Created #{Recipe.count}"
Recipe.create!(name: "Creamy chicken pasta", description:"Try our crowd-pleasing creamy chicken pasta for your next family meal. It's packed with flavour and is easy for anyone to make, including children",image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2022/01/creamy-chicken-pasta-086c722.jpg?quality=90&resize=556,505", rating: 2.8)
puts "Created #{Recipe.count}"
Recipe.create!(name: "New York cheesecake", description:"This authentic creamy dessert will add a taste of New York to any dining table. Our American-style baked cheesecake recipe makes an easy family dessert.", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1001487_11-f54704c.jpg?quality=90&resize=440,400", rating: 5)
puts "Created #{Recipe.count}"

puts "FINISHED"
