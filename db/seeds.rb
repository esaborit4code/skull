# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create([
  { name: 'Tomaca' },
  { name: 'Bajoqueta' },
  { name: 'Cuixa de pollastre' },
  { name: 'Garrofons' },
  { name: 'Caragol bavós' },
  { name: 'Conill' },
  { name: 'Carxofa' }
])

Ingredient.find_each do |ingredient|
  Resource.create(item: ingredient)
end
