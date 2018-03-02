class Player < ApplicationRecord
  has_many :resources, dependent: :nullify
end
