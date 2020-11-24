# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Below some inputs to seed our products database
# Use $ rails db:seed in dev. environment and $ heroku run rake db:seed in production environment
# products = Product.create([
#   { name: "Bracelet", description: "Nice bracelet 1", image_url: "products-img/bracelet_1.jpg" },
#   { name: "Bracelet", description: "Nice bracelet 2", image_url: "products-img/bracelet_2.jpg" },
#   { name: "Earrings", description: "Nice Earrings 1", image_url: "products-img/earrings_1.jpg" },
#   { name: "Earrings", description: "Nice Earrings 2", image_url: "products-img/earrings_2.jpg" },
#   { name: "Necklace", description: "Nice necklace 1", image_url: "products-img/necklace_1.jpg" },
#   { name: "Necklace", description: "Nice necklace 2", image_url: "products-img/necklace_2.jpg" },
#   { name: "Necklace", description: "Nice necklace 3", image_url: "products-img/necklace_3.jpg" },
#   { name: "Ring", description: "Nice ring 1", image_url: "products-img/ring_1.jpg" },
#   { name: "Ring", description: "Nice ring 2", image_url: "products-img/ring_2.jpg" }
# ])


# Below some inputs to seed our orders database
# Use $ rails db:seed in dev. environment and $ heroku run rake db:seed in production environment
products = Order.create([
  { user_id: 1, product_id: 12, total: 12.4 },
  { user_id: 2, product_id: 14, total: 25.6 }
])
