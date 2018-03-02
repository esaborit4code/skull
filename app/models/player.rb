class Player < ApplicationRecord
  has_many :resources, dependent: :nullify
  has_many :ingredients, through: :resources, source: :item, source_type: 'Ingredient'
end
