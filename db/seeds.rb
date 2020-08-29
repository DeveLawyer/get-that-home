# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'zamir@able.co', password: 'codeable', name: 'Zamir', phone_number: '987987987', type: 'Landlord')
user2 = User.create(email: 'benja@able.co', password: 'codeable', name: 'Benja', phone_number: '923123123', type: 'HomeSeeker')

puts "creating properties"
property1 = Property.new(address: "Av. del Ejercito 445, Magdalena del Mar", price: 220000, bedrooms: 3, bathrooms: 2, amenities_dpt: "with garage", amenities_bld: "Park nearby", close_by: "many supermarkets", description: "no me interesa mucho llenar algún tipo de información acá!", type: "sell", user_id: 1)
property1.save
property2 = Property.new(address: "Calle Berlín 125, Miraflores", price: 2800, bedrooms: 2, bathrooms: 2, amenities_dpt: "todas la pendejada que un hipster desea", amenities_bld: "Gym incluido para que te parezcas a tu guerrerito preferido", close_by: "un webo de restaurantes vegetarianos donde pagas harto como webon", description: "que más necesitas saber awebedo del orto?", type: "rent", user_id: 1)
property2.save
puts "properties created"