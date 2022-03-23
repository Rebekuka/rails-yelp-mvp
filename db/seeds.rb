# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

restaurants = Restaurant.create([{ name: 'Star Wars' }, { address: 'Lord of the Rings' }, { category: 'french' }])
restaurants = Restaurant.create([{ name: 'suchi' }, { address: 'riz' }, { category: 'japanese' }])
restaurants = Restaurant.create([{ name: 'burger' }, { address: 'castellane' }, { category: 'chinese' }])
restaurants = Restaurant.create([{ name: 'salade' }, { address: 'redon' }, { category: 'italian' }])
restaurants = Restaurant.create([{ name: 'miam' }, { address: 'rouviere' }, { category: 'french' }])
