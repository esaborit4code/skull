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

SellableItem.create([
  { name: 'Espardenyes pudentes', value: 2 },
  { name: 'Pinta de fallera', value: 3 },
  { name: 'Gaiata de la Magdalena', value: 4 },
  { name: 'Tirant lo Blanc', value: 5 }
])

item = SellableItem.find_by(name: 'Tirant lo Blanc')
Resource.create(item: item)

item = SellableItem.find_by(name: 'Gaiata de la Magdalena')
2.times { Resource.create(item: item) }

item = SellableItem.find_by(name: 'Pinta de fallera')
3.times { Resource.create(item: item) }

item = SellableItem.find_by(name: 'Espardenyes pudentes')
4.times { Resource.create(item: item) }
