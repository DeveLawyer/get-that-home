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
